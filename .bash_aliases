alias jxstop='cd /home/jx_docker/ && docker-compose stop bishop s3relay'
alias jxstart='cd /home/jx_docker/ && docker-compose start goddess && sleep 3 && docker-compose start bishop s3relay && sleep 5 && docker-compose up gs1'
alias jxstopall='cd /home/jx_docker/ && docker-compose stop bishop s3relay gs1 goddess'
