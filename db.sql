DROP DATABASE IF EXISTS a9;
CREATE DATABASE a9;
USE a9;

# todo 테이블이 존제한다면 삭제
DROP TABLE IF EXISTS todo;

# todo 테이블 생성
## UNSIGNED : 음수금지
# NOT NULL : 생략금지
# PRIMARY KEY : 중복금지
# AUTO_INCREMENT : 수동금지(즉 자동으로 넘버링이 되기 때문에 데이터를 수동으로 넣지 않아도 된다.)
CREATE TABLE todo(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	reg_date DATETIME NOT NULL,
	perform_date DATETIME NOT NULL,
	is_completed TINYINT UNSIGNED NOT NULL,
	content VARCHAR(200) NOT NULL
);

# todo 테이블의 is_completed 칼럼을 수정, 기본값을 0으로 지정
ALTER TABLE todo MODIFY COLUMN is_completed TINYINT UNSIGNED DEFAULT 0;

# todo 테이블의 칼럼구성을 자세히 살펴보기
DESC todo;

# 테이블 안에 있는 데이터를 모두 삭제
## id 값은 존재
DELETE FROM todo;

# 테이블 안에 있는 데이터를 흔적도 없이 모두 삭제
## id 값까지 모두 삭제
TRUNCATE todo;

# 할일 3개 추가
INSERT INTO todo
SET reg_date = NOW(),
perform_date = '2022-05-19 08:00:00',
is_completed = 0,
content = '기상';

INSERT INTO todo
SET reg_date = NOW(),
perform_date = '2022-05-19 12:00:00',
is_completed = 0,
content = '점심식사';

INSERT INTO todo
SET reg_date = NOW(),
perform_date = '2022-05-19 18:00:00',
is_completed = 0,
content = '저녁식사';

SELECT * FROM todo;