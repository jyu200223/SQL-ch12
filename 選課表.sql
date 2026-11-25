CREATE TABLE `選課表` (
    `學號` CHAR(8),
    `課號` CHAR(5),
    `成績` INT NOT NULL,
    PRIMARY KEY (`學號`, `課號`),
    FOREIGN KEY (`學號`)
        REFERENCES `學生表` (`學號`)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (`課號`)
        REFERENCES `課程表` (`課號`)
);

INSERT INTO `選課表` (`學號`, `課號`, `成績`)
VALUES
('S001', 'C001', 56),
('S001', 'C005', 73),
('S002', 'C002', 92),
('S002', 'C005', 63),
('S003', 'C004', 92),
('S003', 'C005', 70),
('S004', 'C003', 75),
('S004', 'C004', 88),
('S004', 'C005', 68),
('S005', 'C005', 95);