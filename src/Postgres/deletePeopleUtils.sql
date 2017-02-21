INSERT INTO public.test_email(
            test_email)
    VALUES ('adam@arcane.ws'),
('adam@arcane.com'),
('mth135@hotmail.com'),
('matt.t.hands@gmail.com'),
('mhands@carproof.com'),
('karim@hotmail.com'),
('sferguson@carproof.com'),
('shauna_kf@yahoo.ca'),
('shauna.luciano@gmail.com'),
('staceymckellar@hotmail.com'),
('smckellar@carproof.com'),
('jmurray@carproof.com'),
('chris@arcane.com'),
('chris.wright@live.com'),
('amanda_barnes87@yahoo.ca'),
('chrissy_harris@outlook.com'),
('jamison.sarah85@yahoo.ca'),
('jessiebrowns85@gmail.com'),
('kristen_matthews@outlook.com'),
('the.wrightway@yahoo.ca'),
('williams.j.meghan@gmail.com'),
('lil_debbie_campbell@yahoo.ca'),
('miss.alison.wilson@gmail.com'),
('anderson.chris13@outlook.com'),
('bradconnors10@yahoo.ca'),
('c_mart@outlook.com'),
('charlie_henderson@outlook.com'),
('douggie.ferguson@gmail.com'),
('gregcarter1980@gmail.com'),
('jeffyburnett@gmail.com'),
('jordy.thompson@yahoo.ca'),
('marshall.j.1985@gmail.com '),
('matty.turner@hotmail.com'),
('brett.johnson85@outlook.com'),
('linds.sampson@gmail.com'),
('chris@arcane.ws'),
('john@arcane.ws'),
('matt@arcane.ws'),
('tbidner@carproof.com'),
('test@test.com'),
('adamgiroux12@gmail.com'),
('adamgiroux12+mmm@gmail.com'),
('tlarocque@carproof.com'),
('kvanleeuwen@carproof.com'),
('NSharma@carproof.com'),
('SSriram@carproof.com'),
('anthony.bidner@gmail.com'),
('chriswright@live.com'),
('test@test.ca'),
('max_d21@hotmail.com'),
('dubinovsky.max@gmail.com'),
('m.dubinovsky@arcane.ws'),
('tbidner1'),
('qa@arcane.ws'),
('c.tully@arcane.ws'),
('j.goodfellow@arcane.ws'),
('adam weststpaul@arcane.ws'),
('b.edgar@arcane.ws'),
('chris 1075536@arcane.ws'),
('chris duplicate_email@arcane.ws'),
('chris+123@arcane.ws'),
('J.ROBERTS@ARCANE.WS'),
('j.roberts+123@arcane.ws'),
('m.coelho@arcane.ws'),
('m.robb@arcane.ws'),
('aalabbassa@carproof.com'),
('abedard@carproof.com'),
('abidner@carproof.com'),
('acudney@carproof.com'),
('ahudson@carproof.com'),
('bmccutcheon@carproof.com'),
('colind@carproof.com'),
('cturner@carproof.com'),
('DGorecki@carproof.com'),
('dmatthews@carproof.com'),
('dplisko@carproof.com'),
('ed@carproof.com'),
('hrubbani@carproof.com'),
('jbontje@carproof.com'),
('jcormier@carproof.com'),
('jking@carproof.com'),
('joe@carproof.com'),
('jtrovato@carproof.com'),
('juliad@carproof.com'),
('jvarkey@carproof.com'),
('karim@carproof.com'),
('kmonden@carproof.com'),
('krostran@carproof.com'),
('ldeveaux@carproof.com'),
('leeandminny@carproof.com'),
('mahers@carproof.com'),
('mdeveaux@carproof.com'),
('mgu@carproof.com'),
('mlafferty@carproof.com'),
('mogden@carproof.com'),
('mstonge@carproof.com'),
('msuojhayer@carproof.com'),
('pmorritt@carproof.com'),
('pskwarko@carproof.com'),
('rmercier@carproof.com'),
('rscott@carproof.com'),
('rthorne@carproof.com'),
('sjalbert@carproof.com'),
('skohn@carproof.com'),
('slalonde@carproof.com'),
('test@carproof.co'),
('test@carproof.com'),
('vpuusaari@carproof.com'),
('aa@yahoo.com'),
('mgu@gmail.com'),
('jamieson.roberts@icloud.com'),
('e@arcane.ws'),
('dabadjian@carproof.com'),
('DMARTIN@CARPROOF.COM'),
('ehunt@carproof.com'),
('mellingham@carproof.com'),
('scassidy@carproof.com'),
('adamgiroux12+mmm2@gmail.com'),
('adamgiroux12+mmm333@gmail.com'),
('adamgiroux12+tesssst@gmail.com'),
('adamgiroux12+test@gmail.com'),
('donna.martin@live.ca'),
('j.roussy@arcane.ws'),
('kittykatseventeen@gmail.com'),
('cp-manitoba@hotmail.com'),
('cp-sask@outlook.com'),
('g.ortbach@arcane.ws'),
('agutierrez@carproof.com'),
('shaunaluciano@gmail.com'),
('gregortbach@outlook.com'),
('brsdsad@sdsads.com'),
('bradyedgar94@gmail.com'),
('gregortbach@hotmail.com'),
('shodge@carproof.com'),
('seanjhodge@gmail.com'),
('nninham@carproof.com'),
('joeroussy@gmail.com'),
('madelaine.coelho@outlook.com'),
('gnor@mymts.net')


--DELETE using temp table

delete
from person_927913da_1c37_48b8_9d88_cec5c1881aec USING alias_927913da_1c37_48b8_9d88_cec5c1881aec, test_email 
WHERE  person_927913da_1c37_48b8_9d88_cec5c1881aec.person_id = alias_927913da_1c37_48b8_9d88_cec5c1881aec.person_id
AND lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) = lower(test_email.test_email);


delete
from alias_927913da_1c37_48b8_9d88_cec5c1881aec USING test_email WHERE  lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) = lower(test_email.test_email);


--DELETE using pattern
delete
from person_927913da_1c37_48b8_9d88_cec5c1881aec USING alias_927913da_1c37_48b8_9d88_cec5c1881aec
WHERE  person_927913da_1c37_48b8_9d88_cec5c1881aec.person_id = alias_927913da_1c37_48b8_9d88_cec5c1881aec.person_id
AND ( lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) like '%@carproof.com' OR  lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) like' %@arcane.ws')

delete
from alias_927913da_1c37_48b8_9d88_cec5c1881aec 
WHERE ( lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) like '%@carproof.com' OR  lower(alias_927913da_1c37_48b8_9d88_cec5c1881aec.alias) like' %@arcane.ws');








