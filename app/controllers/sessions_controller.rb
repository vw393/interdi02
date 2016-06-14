class SessionsController < Devise::SessionsController

  before_filter :protect

  def protect

    @ips = ['127.0.0.1', '192.168.61.1', '172.24.1.203']

    @from_ip = request.remote_ip
    logger.debug "session: trovato IP: #{@from_ip.inspect}"

    if not @ips.include? @from_ip
      render :text => "You are unauthorized"
      return
    end
  end

end
