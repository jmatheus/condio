class NotificationService

  def self.notify
    gcm = GCM.new("AIzaSyDnQXQbL5QMYnCa1RBVm-ZUR3iXwz60DOM")
    device_ids = Device.where(enabled: true).pluck(:token)
    gcm.send(device_ids, {data: {message: "O Síndico postou um novo aviso!"}})
  end
end
