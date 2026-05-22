
USE data_source;
ALTER TABLE data1
ADD column email varchar(100)


USE data_source;
ALTER TABLE data1
rename column email to student_mail;

use data_source;
ALTER TABLE data1
modify marks decimal(5,2);

use data_source;
ALTER TABLE data1
DROP column student_mail;

