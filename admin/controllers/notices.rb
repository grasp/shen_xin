ShenXin::Admin.controllers :notices do
  get :index do
    @title = "Notices"
    @notices = Notice.all
    render 'notices/index'
  end

  get :new do
    @title = pat(:new_title, :model => 'notice')
    @notice = Notice.new
    render 'notices/new'
  end

  post :create do
    @notice = Notice.new(params[:notice])
    if @notice.save
      @title = pat(:create_title, :model => "notice #{@notice.id}")
      flash[:success] = pat(:create_success, :model => 'Notice')
      params[:save_and_continue] ? redirect(url(:notices, :index)) : redirect(url(:notices, :edit, :id => @notice.id))
    else
      @title = pat(:create_title, :model => 'notice')
      flash.now[:error] = pat(:create_error, :model => 'notice')
      render 'notices/new'
    end
  end

  get :edit, :with => :id do
    @title = pat(:edit_title, :model => "notice #{params[:id]}")
    @notice = Notice.find(params[:id])
    if @notice
      render 'notices/edit'
    else
      flash[:warning] = pat(:create_error, :model => 'notice', :id => "#{params[:id]}")
      halt 404
    end
  end

  put :update, :with => :id do
    @title = pat(:update_title, :model => "notice #{params[:id]}")
    @notice = Notice.find(params[:id])
    if @notice
      if @notice.update_attributes(params[:notice])
        flash[:success] = pat(:update_success, :model => 'Notice', :id =>  "#{params[:id]}")
        params[:save_and_continue] ?
          redirect(url(:notices, :index)) :
          redirect(url(:notices, :edit, :id => @notice.id))
      else
        flash.now[:error] = pat(:update_error, :model => 'notice')
        render 'notices/edit'
      end
    else
      flash[:warning] = pat(:update_warning, :model => 'notice', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy, :with => :id do
    @title = "Notices"
    notice = Notice.find(params[:id])
    if notice
      if notice.destroy
        flash[:success] = pat(:delete_success, :model => 'Notice', :id => "#{params[:id]}")
      else
        flash[:error] = pat(:delete_error, :model => 'notice')
      end
      redirect url(:notices, :index)
    else
      flash[:warning] = pat(:delete_warning, :model => 'notice', :id => "#{params[:id]}")
      halt 404
    end
  end

  delete :destroy_many do
    @title = "Notices"
    unless params[:notice_ids]
      flash[:error] = pat(:destroy_many_error, :model => 'notice')
      redirect(url(:notices, :index))
    end
    ids = params[:notice_ids].split(',').map(&:strip)
    notices = Notice.find(ids)
    
    if notices.each(&:destroy)
    
      flash[:success] = pat(:destroy_many_success, :model => 'Notices', :ids => "#{ids.to_sentence}")
    end
    redirect url(:notices, :index)
  end
end
