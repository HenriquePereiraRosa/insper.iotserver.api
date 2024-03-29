CREATE TABLE device (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(15) NOT NULL,
    label VARCHAR(50) NOT NULL,
    hw_version VARCHAR(15),
    fw_version VARCHAR(15),
    ip VARCHAR(15),
    mac VARCHAR(17)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE state ( /* State to read and write */
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    msg_code CHAR(5),
    state BIT,
    date_time DATETIME,
    desired_state BIT,
    desired_date_time DATETIME,
    id_device BIGINT(20) NOT NULL,
    FOREIGN KEY (id_device) REFERENCES device(id) 
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE color (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	msg VARCHAR(100),
    color CHAR(6),
    date_time DATETIME,
    desired_color CHAR(6),
    desired_date_time DATETIME,
    id_device BIGINT(20) NOT NULL,
    FOREIGN KEY (id_device) REFERENCES device(id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;