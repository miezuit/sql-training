CREATE TABLE `projekts` (
  `number` int(11) NOT NULL default '0',
  `descriptionofproj` varchar(50) default NULL,
  `contractoronjob` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('1','outside house painting','Murphy');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('2','kitchen remodel','Valdez');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('3','wood floor installation','Keller');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('4','roofing','Jackson');
