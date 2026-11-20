CREATE DATABASE IF NOT EXISTS bacrems_db;
USE bacrems_db;

CREATE TABLE resident (
  resident_id    VARCHAR(10)  PRIMARY KEY,
  resident_name  VARCHAR(100) NOT NULL,
  birth_date     DATE         NOT NULL,
  gender         VARCHAR(10)  NOT NULL,
  zone           VARCHAR(20)  NOT NULL,
  civil_status   VARCHAR(20)  NOT NULL,
  CONSTRAINT chk_gender       CHECK (gender IN ('Male', 'Female')),
  CONSTRAINT chk_civil_status CHECK (civil_status IN ('Single', 'Married', 'Widowed', 'Separated')),
  CONSTRAINT chk_birth_date   CHECK (birth_date >= '1900-01-01')
);

CREATE TABLE certificate_type (
  certificate_type_id  VARCHAR(10)  PRIMARY KEY,
  certificate_name     VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE barangay_staff (
  staff_id    VARCHAR(10)  PRIMARY KEY,
  staff_name  VARCHAR(100) NOT NULL
);

CREATE TABLE certificate_request (
  request_id           VARCHAR(10)  PRIMARY KEY,
  resident_id          VARCHAR(10)  NOT NULL,
  certificate_type_id  VARCHAR(10)  NOT NULL,
  staff_id             VARCHAR(10)  NOT NULL,
  request_date         DATE         NOT NULL DEFAULT (CURRENT_DATE),
  purpose_of_request   VARCHAR(150) NOT NULL,
  request_status       VARCHAR(20)  NOT NULL DEFAULT 'Pending',
  CONSTRAINT chk_request_status CHECK (request_status IN ('Pending', 'Approved')),
  CONSTRAINT fk_req_resident FOREIGN KEY (resident_id)
    REFERENCES resident(resident_id) ON DELETE RESTRICT,
  CONSTRAINT fk_req_type FOREIGN KEY (certificate_type_id)
    REFERENCES certificate_type(certificate_type_id) ON DELETE RESTRICT,
  CONSTRAINT fk_req_staff FOREIGN KEY (staff_id)
    REFERENCES barangay_staff(staff_id) ON DELETE RESTRICT
);

CREATE TABLE certificate (
  certificate_id  VARCHAR(10) PRIMARY KEY,
  request_id      VARCHAR(10) NOT NULL UNIQUE,  
  issue_date      DATE        NOT NULL DEFAULT (CURRENT_DATE),
  CONSTRAINT fk_cert_request FOREIGN KEY (request_id)
    REFERENCES certificate_request(request_id) ON DELETE CASCADE
);
