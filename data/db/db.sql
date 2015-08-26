DROP TABLE IF EXISTS speakers;
CREATE TABLE speakers (
  id INTEGER PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  title VARCHAR(80) NOT NULL,
  company VARCHAR(80) NOT NULL,
  url_company VARCHAR(255),
  twitter VARCHAR(80)
);

DROP TABLE IF EXISTS talks;
CREATE TABLE talks (
  id INTEGER PRIMARY KEY,
  title TEXT,
  abstract TEXT,
  day TEXT,
  start_time TEXT,
  end_time TEXT
);

DROP TABLE IF EXISTS talks_speakers;
CREATE TABLE talks_speakers (
  talk_id INTEGER NOT NULL,
  speaker_id INTEGER NOT NULL
);

INSERT INTO speakers
  (id, name, title, company, url_company, twitter)
VALUES
  (1, 'Ryan Weaver', 'Trainer and Consultant', 'KNP University', 'http://knpuniversity.com/', 'weaverryan'),
  (2, 'Saša Stamenković', 'PHP Engineer', 'KNP Labs', 'http://knplabs.com/', NULL),
  (3, 'Michele Orselli', 'CTO', 'Ideato', 'http://www.ideato.it', '_orso_'),
  (4, 'Marek Matulka', 'PHP/Symfony Developer', 'SensioLabs UK', 'http://sensiolabs.com/', 'super_marek'),
  (5, 'Damir Brekalo', 'Software Engineer', 'Trikoder', 'http://www.trikoder.hr/', NULL),
  (6, 'Jakub Zalas', 'Symfony core team member', 'SensioLabs UK', 'http://sensiolabs.com/', 'jakub_zalas'),
  (7, 'Michał Marcinkowski', 'Entrepreneur and Software Developer', 'Lakion', 'http://lakion.com/', 'micmarcinkowski'),
  (8, 'Paweł Jędrzejewski', 'Entrepreneur and Software Developer', 'Sylius', 'http://sylius.org/', 'pjedrzejewski'),
  (9, 'David Buchmann', 'Symfony expert', 'Liip AG', 'https://www.liip.ch/en', 'dbu'),
  (10, 'Bernhard Schussek', 'Symfony core team member', 'SensioLab', 'http://sensiolabs.com/', 'webmozart'),
  (11, 'Nicolas Grekas', 'Symfony core team member', 'SensioLab', 'http://sensiolabs.com/', 'nicolasgrekas'),
  (12, 'Enrico Zimuel', 'Senior Software Engineer', 'Zend Technologies', 'http://zend.com', 'ezimuel');

INSERT INTO talks
  (id, title, abstract, day, start_time, end_time)
VALUES
  (1, 'Doctrine: Get to work with mapping, queries and relationships!', 'Doctrine talks to databases, and if you can master it, you''re dangerous! In this workshop, we''ll start from the beginning with Doctrine inside Symfony and quickly learn how to map entities to the database, make simple (and more interesting) queries, and master all the complexities of database relationships.', '2015-08-26', '9:30', '12:45'),
  (2, 'Continuous Integration of PHP projects', 'Time to market is really important in our sector, but releasing software rapidly without sacrificing quality is not an easy task. Continuous Integration (CI) aims to improve and automate this process, reducing risks, raising awareness about project state and giving confidence to the dev team.', '2015-08-26', '9:30', '12:45'),
  (3, 'Classes, interfaces, dependency injection and OOP best practices', 'Maybe you already understand the basics of object-oriented programming: classes, sub-classes and methods. In this workshop, we''ll take you a step further by building real code to leverage the *really* neat stuff, like interfaces, dependency injection and patterns like composition inside of Symfony. Let''s go!', '2015-08-26', '13:45', '17:00'),
  (4, 'Modernising the Legacy', 'No one likes to work with the legacy projects - it''s not fun. There are no specs, there are no behat examples and you''re afraid to touch it. The customer may not have time or budget to spend on rewriting it from the scratch, but you may keep asking for new features. Learn how to work with the legacy code, how to add new features without breaking it. Learn to use Symfony components to support building sustainable features.', '2015-08-26', '13:45', '15:15'),
  (5, 'Frontend as design to backend middleware or some JS concepts that any good PHP dev should know', 'Workshop aims to demonstrate how application and component architecture can be shared between all application layers (frontend, design and backend) while respecting programming best practices such as loose coupling.', '2015-08-26', '15:30', '17:00'),
  (6, 'Loose coupling in practice', 'Practices like DDD are becoming so popular in the PHP world that we tend to forget about the most basic forces in object oriented design - coupling and cohesion. This tutorial will remind you how important loose coupling is, what are the risks carried by tightly coupled software, and how to write loosely coupled code in the context of Symfony framework.', '2015-08-27', '9:30', '12:45'),
  (7, 'Rapid API development with Lionframe', 'Building applications that follow the REST architectural style can be quite hard and troublesome. Like most other web frameworks out there, Symfony does not have any built-in mechanism for building well-behaved web APIs. On the other hand, there are many open source libraries that we can find useful, so make use of them! I will show you how easy it can be to build your own mature, RESTful API using open-source software and even how you can do it in minutes using Lionframe! During the workshop we will implement a simple web application together with its API. Knowledge of PHP is everything you need to take part in this workshop.', '2015-08-27', '9:30', '12:45'),
  (8, 'HTTP caching with Varnish', 'For some scenarios, Varnish is the silver bullet to fix performance issues and go from slow site to lightning fast site. More often though, you will need to put some effort into your application to get good results. Ideally, you design your application to play well with caching from the outset. If you don''t know what you are doing, Varnish can also be the bullet to shoot yourself in the foot. In this workshop, you will learn how to use HTTP headers to control caching and how to configure Varnish itself. Running your own vagrantbox with Varnish and PHP, you get to try out the effects of the caching headers and of Varnish configuration directives. We will discuss things that go well with Varnish and situations to avoid. After mastering the basics, we look at advanced concepts like edge side includes (ESI). With this knowledge, you will be able to set up and configure Varnish. You know how to build applications with caching in mind, and can assess whether an application is ready for Varnish or what needs to be fixed.', '2015-08-27', '13:45', '17:00'),
  (9, 'Next-gen package development with Puli', 'Puli is a new toolkit built on top of Composer that allows to create Plug ''n Play packages compatible with any framework. With Puli, we can reduce the community fragmentation and work on interoperable packages together. In this workshop, you will learn how to use Puli in your project. You will see that package development for PHP is soon going to change completely - and you will have the tools and knowledge to take the lead.', '2015-08-27', '13:45', '17:00'),
  (10, 'Modelling by example', 'Behavior-Driven-Development is a very hot topic in the world of PHP. More and more teams adopt this methodology in their everyday workflow. “Modelling by Example” is a combination of BDD and Domain-Driven-Design, which allows your domain and scenarios to grow together. Breaking down the development of core domain and UI into two separate tasks results in a major decrease of feedback loop. At this point I consider this to be the best development workflow. During the workshop we will implement a simple application, which will include writing scenarios, specs and designing the domain models.', '2015-08-28', '9:30', '12:45'),
  (11, 'Profiling PHP apps', 'In this workshop, we will talk about inclusive and exclusive costs, wall time, cpu time, memory, caller, callee, callgraphs, aggregations, comparisons, etc. This workshop will tell you what profiling is and why it should become part of your daily arsenal. You''ll learn the theoretical basis of performance analyzes and you will practice the tools to do them. We will run XDebug, XHProf and Blackfire on your applications and look for bottlenecks. You will also learn that profiling is not only about performance. When you don''t know the inners of an application, looking at call graphs is like seeing through your app - it''s a lens on how its internals work. Can you imagine a doctor doing surgery without medical imagery? That''s what profiling is for a developer. You shouldn''t miss out.', '2015-08-28', '9:30', '12:45'),
  (12, 'Migrating to Symfony 3', 'In this workshop, I''ll tell how we migrated Symfony itself to Symfony 3.0. This story is about the process we invented so far to move forward, leaving the legacy behing us while allowing the ecosystem to follow a clear and continuous upgrade path. You''ll also learn how to migrate your own applications to Symfony 3.0 and you''ll practice this fresh knowledge on a legacy app prepared just for this exercice. But be warned: as of this workshop, Symfony 3.0 is still a work in progress and we''ll live on the cutting edge of an unstable code base.', '2015-08-28', '13:45', '17:00'),
  (13, 'Develop RESTful API in PHP using Apigility', 'Develop a RESTful web API is not a simple task. How to manage the error handling? Which format to use for the data exchange? How to manage the content negotiation? What about the versioning? How to build an authentication system? How to produce the API documentation? In this workshop we will show how to design and implement a REST architecture using Apigility, the open source API builder for PHP (http://apigility.org).', '2015-08-28', '13:45', '17:00');

INSERT INTO talks_speakers
  (talk_id, speaker_id)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (7, 8),
  (8, 9),
  (9, 10),
  (10, 7),
  (10, 8),
  (11, 11),
  (12, 11),
  (13, 12);
