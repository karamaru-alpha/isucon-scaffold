#!/bin/bash -eux

## 各種設定ファイルのコピー
#sudo cp -f etc/mysql/my.cnf /etc/mysql/my.cnf
#sudo cp -f etc/nginx/nginx.conf /etc/nginx/nginx.conf
#sudo cp -f etc/nginx/sites-available/isuXxx.conf /etc/nginx/sites-available/isuXxx.conf
#sudo nginx -t

## アプリケーションのビルド
#cd /home/isucon/webapp/go && go build -o isuXxx

## ミドルウェア・Appの再起動
#sudo systemctl restart mysql
#sudo systemctl reload nginx
#sudo systemctl restart isuXxx

## slow query logの有効化
#QUERY="
#set global slow_query_log_file = '/var/log/mysql/slow-query.log';
#set global long_query_time = 0;
#set global slow_query_log = ON;
#"
#echo $QUERY | sudo mysql -uroot

## log lotation
#sudo chmod -R 777 /var/log/nginx
#sudo chmod -R 777 /var/log/mysql
#sudo touch /var/log/go.log
#sudo chmod -R 777 /var/log/go.log
#sudo rm -f /var/log/nginx/access.log
#sudo rm -f /var/log/nginx/error.log
#sudo rm -f /var/log/mysql/slow-query.log
#sudo rm -f /var/log/mysql/error.log
#sudo cp /dev/null /var/log/go.log
