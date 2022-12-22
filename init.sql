SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `answers` (`question_id`, `answer`, `is_correct`) VALUES
    ('0', 'Clear', 1),
    ('0', 'Catch', 0),
    ('0', 'Delete', 0),
    ('0', 'Remove', 0),

    ('1', 'rm', 1),
    ('1', 'rk', 0),
    ('1', 'dl', 0),
    ('1', 'rc', 0),

    ('2', 'dc', 0),
    ('2', 'cd', 1),
    ('2', 'c', 0),
    ('2', 'None of these', 0),

    ('3', 'ip', 0),
    ('3', 'ipp', 0),
    ('3', 'ip2', 0),
    ('3', 'None of these', 1),

    ('4', 'chown', 1),
    ('4', 'own', 0),
    ('4', 'cd own', 0),
    ('4', 'cown', 0);


CREATE TABLE `attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attempt_count` int(11) NOT NULL,
  `result` double NOT NULL,
  `attempted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quiz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `questions` (quiz_id, question) VALUES
    (0, 'What command clears the contents of your terminal display?'),
    (0, 'What is the command to delete a file?'),
    (0, 'What command is used to change directories?'),
    (0, 'What command is used to get the IP address of all interfaces on a server?'),
    (0, 'What command is used to change ownership of a file?');

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `questioncount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `quizzes` (`title`, `created_by`, `questioncount`) VALUES
    ('Linux Command Line', 'Admin', 5);

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(255) DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `attempts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;