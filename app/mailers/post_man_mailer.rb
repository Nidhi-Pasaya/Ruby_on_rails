class PostManMailer < ApplicationMailer
    def alert_admin
        logger.info "============================= in alert_ admin ======================="
        attachments['home_page_image.jpg'] = File.read('app\assets\images\home_page_image.jpg')
        mail(to:"testkitsol123@gmail.com", subject:"The mail is from MS University")
    end
end
