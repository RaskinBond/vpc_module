locals {
    all_ports            = 0
    ssh_port             = 22
    http_port            = 80
    app_port             = 8080
    db_port              = 3306
    protocol             = "tcp"
    any_protocol         = "-1"
    any_where            = "0.0.0.0/0"
    any_where_ipv6       = "::/0"
    key_name             = "Legion"
    default_desc         = "Created from Terraform"
    webserver_tags       = [ "Jenkins-Master", "Jenkins-Agent" ]
    env_prefix           = "Dev"

    # db_subnet_groupname  = "stack-db-subnet-group"
    # db_allocated_storage = 20
    # db_name              = "mydb"
    # db_engine            = "mysql"
    # db_engine_version    = "8.0.32"
    # db_instance_class    = "db.t3.micro"
    # db_username          = "admin"
    # db_password          = "admin123"
    # db_identifier        = "myfirstrdsfromtf"

}