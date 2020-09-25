# Sendemail

Sendemail - агент передачи электронной почты в докер-контейнере

## Запуск

Для запуска выполните:

    docker run --rm \
    chatlamin/sendemail:latest \
    sendemail --help

## Пример

Пример запуска с почтовым сервисом gmail

    MAIL_FROM='отправитель@gmail.com'
    MAIL_TO='адресат@gmail.com'
    MAIL_NAME='backup mysql'
    MAIL_BODY="ERROR"
    MAIL_SMTP='smtp.gmail.com:587'
    MAIL_LOGIN='mylogin@gmail.com'
    MAIL_PASS='mypassword'

    docker run --rm \
        chatlamin/sendemail:latest \
        sendemail \
        -o tls=yes \
        -f $MAIL_FROM \
        -t $MAIL_TO \
        -s $MAIL_SMTP \
        -xu $MAIL_LOGIN \
        -xp $MAIL_PASS \
        -u "$MAIL_NAME" \
        -m "$MAIL_BODY"

