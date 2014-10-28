
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`usuario` (`idusuario`, `nome`, `email`, `idade`, `foto`, `senha`) VALUES (3, 'Indiana', 'indiana@hotmail.com', 23, 'http://lorempixel.com/output/people-q-c-360-360-7.jpg', 'ganesh123');
INSERT INTO `sitap`.`usuario` (`idusuario`, `nome`, `email`, `idade`, `foto`, `senha`) VALUES (0, 'anonimo', 'anonimo@anonimo.com.br', NULL, NULL, NULL);
INSERT INTO `sitap`.`usuario` (`idusuario`, `nome`, `email`, `idade`, `foto`, `senha`) VALUES (1, 'ADM', 'admin@admin.com.br', NULL, NULL, '12345');
INSERT INTO `sitap`.`usuario` (`idusuario`, `nome`, `email`, `idade`, `foto`, `senha`) VALUES (2, 'Rambo Vara', 'rambo@gmail.com.br', 40, 'http://lorempixel.com/output/people-h-c-360-479-6.jpg', 'fuzileiro123');

COMMIT;


-- -----------------------------------------------------
-- Data for table `sitap`.`artigo`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`artigo` (`idartigo`, `titulo`, `conteudo`, `data`, `usuario_idusuario`, `like`) VALUES (1, 'A pizza nossa de cada dia nos dai hoje', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>', '2014/10/27 16:44:13', 2, 15);
INSERT INTO `sitap`.`artigo` (`idartigo`, `titulo`, `conteudo`, `data`, `usuario_idusuario`, `like`) VALUES (2, 'O Bacon fazmal pro corpo', '<p>Bacon ipsum dolor amet prosciutto strip steak spare ribs capicola tri-tip kielbasa ball tip doner pork chop beef ribs swine. Pork loin turducken cow chicken, shank tail leberkas. Short loin strip steak drumstick, kielbasa tri-tip porchetta ball tip sausage short ribs corned beef bresaola. Rump sirloin pork brisket hamburger short ribs meatball tri-tip ham pastrami prosciutto boudin pork belly bacon. Pork belly kevin bresaola drumstick leberkas. Venison pork chop meatball drumstick swine. Tri-tip capicola pork belly jerky sirloin short loin venison.</p>', '2014/10/27 16:50:20', 3, 9);

COMMIT;


-- -----------------------------------------------------
-- Data for table `sitap`.`fotos`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`fotos` (`idfotos`, `nome`, `artigo_idartigo`) VALUES (1, 'http://lorempizza.com/380/240', 1);
INSERT INTO `sitap`.`fotos` (`idfotos`, `nome`, `artigo_idartigo`) VALUES (2, 'http://lorempizza.com/380/260', 1);
INSERT INTO `sitap`.`fotos` (`idfotos`, `nome`, `artigo_idartigo`) VALUES (3, 'https://s3.amazonaws.com/baconmockup/img/baconmockup-470-300.jpg', 2 );
INSERT INTO `sitap`.`fotos` (`idfotos`, `nome`, `artigo_idartigo`) VALUES (4, 'https://s3.amazonaws.com/baconmockup/img/bm-home-140.jpg', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `sitap`.`categoria`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`categoria` (`idcategoria`, `tema`, `descricao`) VALUES (1, 'Pizza', 'Categoria que fala sobre pizzas');
INSERT INTO `sitap`.`categoria` (`idcategoria`, `tema`, `descricao`) VALUES (2, 'jogos', 'Categoria que fala sobre jogos');
INSERT INTO `sitap`.`categoria` (`idcategoria`, `tema`, `descricao`) VALUES (3, 'Bacon', 'Categoria que fala sobre bacon');

COMMIT;


-- -----------------------------------------------------
-- Data for table `sitap`.`categoria_has_artigo`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`categoria_has_artigo` (`categoria_idcategoria`, `artigo_idartigo`) VALUES (1, 1);
INSERT INTO `sitap`.`categoria_has_artigo` (`categoria_idcategoria`, `artigo_idartigo`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `sitap`.`comentario`
-- -----------------------------------------------------
START TRANSACTION;
USE `sitap`;
INSERT INTO `sitap`.`comentario` (`idcomentario`, `usuario_idusuario`, `artigo_idartigo`, `corpo`, `data`) VALUES (1, 0, 1, 'ALOHA, ISSO É UM COMENTÁRIO', '2014/10/27 16:48:50');
INSERT INTO `sitap`.`comentario` (`idcomentario`, `usuario_idusuario`, `artigo_idartigo`, `corpo`, `data`) VALUES (2, 3, 1, 'ALOHA, É NÓIS', '2014/10/28 13:20:10');
INSERT INTO `sitap`.`comentario` (`idcomentario`, `usuario_idusuario`, `artigo_idartigo`, `corpo`, `data`) VALUES (, NULL, NULL, NULL, NULL);

COMMIT;

