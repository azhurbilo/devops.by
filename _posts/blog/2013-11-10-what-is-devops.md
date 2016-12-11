---
layout: post
title: Что такое DevOps?
excerpt: ""
modified: 2013-11-10
categories: blog
excerpt: "DevOps - новый стандарт в разработке. Учитывая, что инфраструктура
современных систем настолько сложна, что человек не справляется с ее поддержкой. Всё должно быть автоматизировано.
Только не следует воспринимать devops исключительно как автоматизацию."
excerpt_show: false
tags: [theory, management, team, version-control-system, infrastructure-as-code, configuration-management]
comments: true
share: true
---

![1 article logo]({{ site.url }}/images/what-is-devops/avatar-1.png)
{: .center .article-logo}

### Определение {#devops-definition}

Посмотрим, что нам покажет глоссарий небезызвестной компании Gartner:

> The DevOps movement was born of the need to improve IT service delivery agility and found initial traction within 
> many large public cloud services providers. Underpinning DevOps is the philosophy found in the Agile Manifesto, 
> which emphasizes people (and culture) and seeks to improve collaboration between operations and development teams. 
> DevOps implementers also attempt to better utilize technology&mdash;especially automation tools that can leverage 
> an increasingly programmable and dynamic infrastructure from a life cycle perspective.

Devops - это модно. Но как заявляет Tim Park , DevOps - новый стандарт в разработке. Учитывая, что инфраструктура современных систем настолько сложна, что человек не справляется с ее поддержкой. Всё должно быть автоматизировано.

![Tim Park]({{ site.url }}/images/what-is-devops/Tim-Park-about-devops.png)
{: .center}

Только не следует воспринимать devops исключительно как автоматизацию. Об этом поговорим далее.

Еще одно определение с wiki:

> DevOps (слияние англ. слов Development (разработка) и Operations (ИТ-операции)) - это новая методология
> в разработке ПО, нацеленная на коммуникации, сотрудничестве и интеграции между 
> подразделениями разработки и эксплуатации.

Обратимся снова к глоссарию Gartner-a, чтобы разъяснить понятие Operations:

> Gartner defines IT operations as the people and management processes associated with IT 
> service management to deliver the right set of services at the right quality and at 
> competitive costs for customers.

Далее в статье под Operations я буду понимать администраторов (работники службы эксплуатации / служба оперативной поддержки ИТ-инфраструктуры).

### Dev VS Operations

Деятельность по разработке и внедрению ПО ранее не требовала глубокой интеграции между департаментами. Но на сегодняшний день необходимо тесное сотрудничество всех отделов (Devlopment, IT Operations, Quality Assurance и т.д).

Когда говорят о devops, чаще всего упоминают о каких-то "Стенах Непонимания" (walls/silos) между разработчиками и администраторами. Проблема в том, что development постоянно добавляют новые изменения, а it operations должны наоборот обеспечить стабильность данной системы. Получаем противоречие :)

Мне очень понравились статья и иллюстрации из блога dev2ops.org на тему конфликта ролей:

![Wall of confusion]({{ site.url }}/images/what-is-devops/devops-wall-of-confusion.png)
{: .center}

Для разработчиков изменение - это то, за что им платят. Бизнес всегда нуждается в изменениях, чтобы соответствовать современному миру. Такое понимание подталкивает разработчиков производить максимально возможное количество изменений. У IT специалистов другое понимание, в котором изменение - это вред. Каждый из них думает, что работает правильно, принося пользу бизнесу. Действительно, если рассматривать их по отдельности, они оба правы.

Вдобавок к различному пониманию общей цели, разработчики и администраторы используют различные инструменты.

![Dev vs Operations tools]({{ site.url }}/images/what-is-devops/dev-vs-ops-tools.png)
{: .center}

### Одна цель - одна команда {#one-goal-one-team}

![Business goal]({{ site.url }}/images/what-is-devops/business-dev-operations.png)
{: .center}

На этом изображении мы видим, что "стенку" между бизнесом и разработкой удалось разрушить за счет внедрения agile методологий, но была забыта друга "стенка" между development-ом и it operations.

Clyde Logue, основатель StreamStep, говорит об этом так: 
> Agile сыграл важную роль в разработке для восстановления доверия у бизнеса, 
> но он нечаянно оставил IT Operations позади. DevOps это способ восстановления 
> доверия ко всей ИТ-организации в целом.

Все сотрудники должны понимать, что они являются частью единого процесса. DevOps культивирует мышление, которое позволяет осознать, что личные решения и действия каждого должны быть направлены на осуществление единой цели. И успех следует измерять относительно всего цикла от-разработки-до-поставки, а не от успеха отдельно взятых ролей.

### Чем devops не является {#what-is-no-devops}

На мероприятии OpsCamp Austin, Adam Jacob из Chef выступил против того, чтобы некоторые системные администраторы изменяли название своей профессии на DevOps. Опасно считать DevOps профессией или особым видом деятельности. Ведь это делает DevOps проблемой кого-то другого, но не всей команды:

> You are a DBA? Don't worry about DevOps, that's the DevOps team's problem. You are a security expert? Don't worry 
> about DevOps, that's the DevOps team's problem.

### Сотрудничество {#collaboration}

На сайте IBM наткнулся на серию статей автора Paul Duvall и каждая статья содержит блок "About this series", который начинается со слов:

> Developers can learn a lot from operations, and operations can learn a lot from developers

Довольно стандартная фраза, которую можно применить в разных контекстах, однако в it мире часто избегают процесса обмена опытом между различными ролями.

В результате тесного сотрудничества разработчиков и специалистов по эксплуатации формируется новое поколение инженеров, которые берут лучшие достижения обеих дисциплин и комбинируют их во благо пользователя. Это проявляется в появлении кросс-функциональных групп, имеющих опыт разработки, управления конфигурацией, работы с базами данных, тестирования и управления инфраструктурой.

В одной из статей Paul Duvall упоминает такое понятие как "The flattening" и сравнивает его с понятием "выравнивания" из книги 2005 году Томаса Фридмана - The World is Flat. Понятие показывает, что такие факторы, как глобализация, информационные технологии, открытие границ развивающихся стран и интернет приводят к "выравниванию", устраняя традиционные барьеры, препятствовавшие участию людей в мировой экономике.

В настоящее время индустрия программного обеспечения демонстрирует свою тенденцию к "выравниванию" внутри компаний, которые стремятся к конкурентному преимуществу: выравниванию выпусков программного обеспечения и организационных структур.

Рассмотрим несколько категорий, которые относятся к DevOps:

* автоматизированная инициализация среды (scripted environments)
* инфраструктура, управляемая тестами (test-driven infrastructures)
* все под управлением версиями (versioning everything)
* мониторинг (monitoring)
* кросс-функциональные группы (Cross-functional teams)

### Scripted environments

Полностью автоматизировав инициализацию среды, можно сократить риск ошибок развертывания. Одна из наиболее значительных проблем проектов разработки программного обеспечения ― это группы с уникальными экземплярами систем, с которыми кроме них больше никто не может совладать, потому что на настройку этих систем потрачены дни, недели или месяцы усилий разных членов группы. Когда среда полностью описана сценариями, она перестает быть уникальной.

Перечислим плюсы данного подхода:

* среда всегда находится в известном состоянии
* уменьшается вероятность того, что знания привязаны к конкретному человеку
* процесс установки становится более предсказуемым и повторяемым

### Test-driven infrastructures

Подход, управляемый тестами, состоит в написании тестов вместе с кодом, и его истоки кроются в разработке программного обеспечения (TDD).

Преимущества:

* проблемы проявляются раньше
* тесты становятся документацией
* легче изолировать деструктивные изменения

В принципе, плюсы такие же, как использование TDD при разработке. Только ошибки на стадии конфигурации стоят намного дороже ошибок в самом приложении, поэтому не нужно пренебрегать тестами для автоматизации конфигураций.

### Versioning everything

Эта модель проста: все находится под управлением версиями. Абсолютно все: инфраструктура, конфигурация, код приложения и сценарии баз данных. Это легко понять, но редко встречаются группы, которые действительно управляют версиями всех артефактов.

Существует отличный способ узнать, все ли находится под управлением версиями: новый человек в группе получает новую машину и должен единственной командой извлечь из системы управления версиями полную рабочую систему программного обеспечения.

### Monitoring

Необходимо мониторить как каждое изменение влияет на всю систему на каждой стадии процесса вплоть до внедрения в производство. Любой член команды в любое время должен иметь доступ к информационной панели, по которой можно судить о текущем состоянии приложения.

### Cross-functional teams

Каждый член кросс-функциональной группы в равной мере отвечает за процесс поставки. Любой человек из группы может изменить любую часть системы программного обеспечения.

Кросс-функциональная группа ослабляет синдром "it's not my job", который душит взаимодействие.

### Tools

Инструменты ― важный компонент модели DevOps.

Приведем пример инструментов различных типов:

Tool Type |  Tools
--- | ---
Infrastructure automation | Bcfg2, Ansible, CFEngine, Chef, Puppet, Salt
Deployment automation | Capistrano, ControlTier, Fabric , Func
Infrastructure as a Service | Amazon Web Services, CloudStack, OpenStack, Rackspace
Build automation | Ant, Maven, Rake, MsBuild, Gradle
Version control | Subversion, Git, Mercurial
Continuous Integration | Jenkins, CruiseControl, Team City
Monitoring | Nagios, Zabbix, Cacti

### Lifecycle

На сайте CollabNet (компании, занимающейся SCM - Subversion и Application Lifecycle Management (ALM) решениями) есть отличные иллюстрации того, как влияет devops на жизненный цикл создания приложений:

![Development lifecycle]({{ site.url }}/images/what-is-devops/devops-lifecycle.png)
{: .center}

Получаем итерации следующего вида:

![Development loops]({{ site.url }}/images/what-is-devops/devops-loop.png)
{: .center}

### Источники {#references}

* [http://www.gartner.com/it-glossary/devops](http://www.gartner.com/it-glossary/devops){:target="_blank"}
* [http://habrahabr.ru/company/scrumtrek/blog/166039/](http://habrahabr.ru/company/scrumtrek/blog/166039/){:target="_blank"}
* [http://devopswiki.net/index.php/DevOps](http://devopswiki.net/index.php/DevOps){:target="_blank"}
* [https://www.ibm.com/developerworks/ru/library/a-devops1/](https://www.ibm.com/developerworks/ru/library/a-devops1/){:target="_blank"}
* [http://dev2ops.org/2010/02/what-is-devops/](http://dev2ops.org/2010/02/what-is-devops/){:target="_blank"}








