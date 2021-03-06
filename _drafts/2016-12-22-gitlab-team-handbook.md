---
layout: post
title: GitLab Handbook - полезные советы
excerpt: ""
categories: blog
tags: [team, communication, culture, company, management, development, practice]
comments: true
share: true
---

![1 article logo]({{ site.url }}/images/gitlab-team-handbook/avatar-1.png)
{: .center .article-logo}

# Handbook

[https://about.gitlab.com/handbook/](https://about.gitlab.com/handbook/)

На этой web странице находится руководство Gitlab, которое содежит видение того, как должна работать компания в целом,
и каким принципам должны следовать разработчики в частности.

Не многие компании могут похвастаться такой прозрачностью (Stock Options, Sales, Employment and Contractor Agreements).

Есть конечно примеры презентаций/документов, которые описывают культуру, ценности, общепринятые нормы в компании:

- [Zappos Culture-book](https://www.zapposinsights.com/files/accounts/zappos/assets/files/culture-book/Zappos_2014_Culture_Book.pdf)
- [Netflix culture](http://www.slideshare.net/reed2001/culture-1798664/123-Seven_Aspects_of_our_Culture)
- [Disqus Culture](https://www.dropbox.com/s/u6suqbbk2w1vbwz/Disqus%20Culture%20Book.pdf)

Но некоторые из таких Culture-book похоже больше на маркетинговые брошурки, в которых много философских мыслей, 
но нет конкретики.
Также когда формат этого документа распространяется как pdf, презентация или книга, то 100% когда ты читаешь ее, то
в данный момент в компании обстоят дела совершенно по-другому.

В дополнение к Gitlab Handbook еще хотел бы посоветовать:

- [Valve Handbook](http://www.valvesoftware.com/company/Valve_Handbook_LowRes.pdf)
- [Clef Handbook](https://github.com/clef/handbook)

Структура репозитория **Clef Handbook** мне нравится даже больше, чем у Gitlab-a.
Проблема Gitlab-a - у них огромный репозиторий, отвечающий за генерацию статического контента всего gitlab.com вебсайта,
что затрудняет поиск тикетаов и issues по handbook-у.

**Идея использовать Markdown, Git, Issues для вопросов и Merge Requests для внесения дополнений в руководство - новый 
уровень прозрачности компании для сотрудников и коммьюнити.**

![Handbook questions]({{ site.url }}/images/gitlab-team-handbook/handbook-questions.png)
{: .center .img-border}

![Handbook contribution 1]({{ site.url }}/images/gitlab-team-handbook/handbook-contribution-1.png)
{: .center .img-border}

![Handbook contribution 2]({{ site.url }}/images/gitlab-team-handbook/handbook-contribution-2.png)
{: .center .img-border}

Далее я вынес наиболее интересные моменты по каждому разделу Gitlab Handbook-a:

# Engineering

## Support

### Service Engineer Onboarding

Expectations of the support team:

- Always be friendly and respectful.
- Be open to new ideas and points of view.
- It is OK if you don't know something. You can always ask someone else.
- It is OK to say no to a customer, but try to suggest a workaround and escalate to a Senior if necessary.

Checklist for Training of New Service Engineers:
 
Your hiring manager should create an issue with this checklist on the support team issue tracker
for you as part of your onboarding.
 
The topics are generally ordered by priority in which they need to be tackled,
but feel free to work on later things in the list when you are waiting on something.

https://about.gitlab.com/handbook/support/onboarding/checklist/

* Stage 0: Complete general onboarding to have all necessary accounts and permissions
* Stage 1: Become familiar with git and GitLab basics
* Stage 2. Installation and Administration basics.
* Stage 3. Customer Interaction through Zendesk (learn about support process)
* Stage 4. Customer Calls
* Stage 5. Gathering Diagnostics
* Stage 6. On Call Duty


### Tools for support

We use Zendesk to handle tickets, and we will sometimes schedule calls. That is most often done through Zoom,
but can also be done through WebEx if the customer's system does not allow them to install the Zoom plugin.
Zoom is a powerful and light-weight videoconferencing tool that works for 90% of the customer calls.
For some customers, only Cisco systems are allowed and for those cases, WebEx will be the best tool for calls. 

### Point to documentation, or make it

As a general rule, you should always include a link to the applicable documentation as part of your response to a ticket.
If the documentation does not exist yet, then make the documentation and send the link in the response.

### Recording information about customer organization

We use ZenDesk Organization Profiles to store relevant information about the customer, like environment setup, 
hardware specs, usage patterns, etc, so that if you need this information, it is readily available from within ZenDesk. 

### Receiving feedback from customer

After 24 hours of marking the ticket as solved a survey is sent to our customers, where they can rate the level of support they received. If a
customer rates a ticket to which you were assigned as bad, an email will be sent to you and the ZenDesk manager to notify you of the fact. 
When this happens, you should let a Senior know about the problem and follow up with the customer to see if something you did can be improved.

You will also receive a message if the feedback is positive, and it is encouraged to celebrate those "wins" 
with the rest of the team through the #support or #thanks chat channel. Read the positive feedback carefully, 
often it contains a question or suggestion for improvement which should be followed up on.

### Support Channels

When an emergency ticket comes in, it triggers a PagerDuty incident. 
All Service Engineers must have the PagerDuty application installed on their phones 
once they are added to the on-call rotation schedule.

When a PD incident is triggered, the alarm will go off for the person on call. 
*Y*ou should acknowledge the incident within 5 minutes, or the person on second level support will be alerted.**
The PD incident will have the link to the corresponding Zendesk issue from where you will continue the conversation with the customer.

Once acknowledged, you need to login to Zendesk, go to the corresponding ticket and let the customer know that 
you will handle their case. On this response you should ask for the best way to contact them. 
Usual channels are Phone, Skype, WebEx or Hangouts.

If you are unable to help the customer and their instance is in a critical state (unavailable, uncertainty of data loss, etc.), 
you should escalate the PD incident to second level support, and work through the issue together.

**You should always answer the regular tickets in a FIFO manner.**


### Support on-call

**Always remember! Don't panic!**

We use PagerDuty to set the on-call schedules, and to route notifications to the correct on-call hero.

**We only have 1 person at any time doing on call, we avoid having fallbacks because that leads 
to ignore pages because "the next fallback will pick it up", we take on call seriously.**

**We do 7 days of 12 hours shifts in a follow-the-sun style, based on your location.**

After 10 minutes, if the alert has not been acknowledged, everyone on the on-call rotation is alerted.
**After a further 15 minutes, management is alerted.**

We track metrics on uptime first, then on time to fix (TTF). 
We do so to understand where the pain is, and how much time are we investing in fixing a problem 
and use those metrics to drive automation priorities.

From Slack you can page by using the slash pd command, like so: `/pd message for the on call`

This will trigger high urgency notification rules and escalates as needed.


### Infrastructure documentation

The main infrastructure documentation can be found in 2 places:

- Runbooks
- Chef cookbooks

Gitlab RunBooks - provide simple solutions for common problems, they should be pointed from our alerting system.

**Runbooks are public, but they are automatically mirrored in our development environment, 
this is so because if GitLab.com is down, those runbooks would not be available to take it up again.**

https://dev.gitlab.org/cookbooks/runbooks

runbooks rules:

1. Make it quick - add links for checks
2. Don't make me think - write clear guidelines, write expectations
3. Recommended structure:
  - Symptoms - how can I quickly tell that this is what is going on
  - Pre-checks - how can I be 100% sure problem exist
  - Resolution - what do I have to do to fix it
  - Post-checks - how can I be 100% sure that it is solved
  - Rollback - optional, how can I undo my fix


### Developers on Support Team Rotation (fix4all)

fix4all is a rotation where one developer–or anyone in GitLab–will **spend a week of his/her time helping the support team**.

There are several goals:

- Reduce the time it takes to resolve customer tickets.
- Reduce the time to fix customer bugs.
- Increase the shared knowledge between developers and service engineers.
- Increase customer awareness within the development team.
- Foster better cooperation between members of different groups.

### Infrastructure transperancy

Gitlab has **public open grafana** - http://monitor.gitlab.net/


## Dependencies

GitLab can be installed through an Omnibus package or from source on different Linux distributions and macOS.
In order to maintain portability, **we need to avoid adding extra dependencies** and use of exotic database extensions.
Every time you choose between changes in the application code or adding new dependencies, you should give priority
to the first because this is easier to maintain and setup.

## Submit your code

In GitLab all code should go through a review process before it can be merged. 
Unless the change is very minor, or is fixing a bug that was introduced 
in the same version, **add an entry to CHANGELOG**.

## Ruby Gems

When building and publishing Gems for GitLab **make sure multiple developers have access to** said Gem on RubyGems.org.
This ensures a Gem doesn't end up being orphaned because the original author left,
lost their credentials, passed away, etc. 

## Feature Freeze

5 working days before the 22nd the stable branches for the upcoming release will be frozen for major changes.
Merge requests may still be merged into master during this period.

## Choosing something to work on

Start working on things with the highest priority in the current milestone.
Choose something that you’re able to tackle.
That means that if you’re a frontend developer, you work on something with the label Frontend.
To filter very precisely, you could filter all issues for:

```
Milestone: Upcoming
Assignee: Unassigned
Label: Your label of choice. For instance CI, Discussion, Edge, Frontend, or Platform
Sort by priority
```

If you’re in doubt about what to work on, ask your lead. They will be able to tell you.


## Issues

### Labelling issues

To allow for asynchronous issue handling, we use milestones and labels.
**Leads and product managers handle most of the scheduling into milestones. Labelling is a task for everyone.**

Most issues will have labels for at least one of the following:

```
Team (CI, Discussion, Edge, Frontend, Platform, etc.) - what team is responsible
Subject (wiki, container registry, etc.) - area or feature
Type (feature proposal, bug, customer, etc.) - define what kind of issue this is.
Priority (P1, P2, P3)
```

A number of type labels have a priority assigned to them, 
which automatically makes them float to the top, depending on their importance.

There are two levels of priority labels:

- Deliverable: Issues that are expected to be delivered in this milestone.
- Stretch: Issues that are a stretch goal for delivering in this milestone. If these issues are not done in the current release, they will strongly be considered for the next release.

Work with your lead if you feel that there are too many Deliverable issues scheduled for the current release.

### Scheduling issues

GitLab Inc has to be selective in working on particular issues.
We have a limited capacity to work on new things. Therefore, we have to schedule issues carefully.
**This is done primarily by product and engineering managers.**

Each issue that is **scheduled should meet most of these criteria**:

1. It should be in line with our vision for GitLab
2. It benefits our users
3. It is technically viable
4. The technical complexity is acceptable (we want to preserve our ability to make changes quickly in the future so we try to avoid: complex code, complex data structures, and optional settings)
5. It is orthogonal to other features (prevent overlap with current and future features)
6. Its requirements are clear
7. It can be achieved within the scheduled milestone. 
Larger issues should be split up, so that individual steps can be achieved within a single milestone.


### Scheduling Committee

There is an **informal scheduling committee** that has a weekly meeting that discusses issues around scheduling
and how the process of scheduling issues can be improved.
**The meeting is open to anyone wanting to join.**

### Critical Security Release Process

There is link to great TODO checklist:
https://about.gitlab.com/handbook/engineering/critical-release-process/

### Issue Triage Policies

**Any GitLab team member can triage issues.**
Keeping the number of untriaged issues low is essential for maintainability, and is our collective responsibility. 

Pick an issue, **with preference given to the oldest in the list**,
and evaluate it with a critical eye, bearing the policies below in mind. Some questions to ask yourself:

- Do you understand what the issue is describing?
- What labels apply? Particularly consider team, subject and type labels
- How critical does it seem? Does it need to be escalated to a lead or the VP of engineering?
- Would the security label be appropriate?
- Should it be made confidential? It's usually the case for security issues or issues that contain private information

If the issue seems unclear - ask the requestor to clarify matters for you, 
and commit to keeping up the conversation until you have enough information to complete triage.

Check for duplicates! Searching for some keywords in the issue should give you a short
list of possibilities to scan through. Check both open and closed issues, as it may be a duplicate of a solved problem.

### Outdated issues

For issues that haven't been updated in the last 3 months the "Awaiting Feedback" label should be added to the issue.

After 14 days, if no response has been made by anyone on the issue, the issue should be closed.
If they respond at any point in the future, the issue can be considered for reopening.

### Lean toward closing

We simply can't satisfy everyone.

- If the issue is a bug report without reproduction steps or version information, 
ask the reporter to provide more information or close the issue.
- If we're definitely not going to add a feature/change, say so and close the issue.



# Marketing

## Marketing Team Purpose

The GitLab Marketing team is here to do the following:

- Meet board approved company goals and metrics.
- Support the GitLab community with education and feedback outlets.
- Enable anyone to contribute to our open source product.
- Message the GitLab product in an authentic and helpful way.
- Help each other to achieve our individual and company OKRs.

Some forums that developers use to get information are 
StackOverflow, Hacker News, Reddit, Twitter, GitLab Documentation, GitHub, a basic Google search, 
and all of these channels should be taken into account when thinking about how to market a developer product. 
Where possible, try to offer community support via these forums. Be responsive.

Marketing Production:

- Blog
- Swag
- Events
- Talks
- Docs
- Website
- Webcasts
- University

Marketing hiring public plan:

https://about.gitlab.com/handbook/marketing/#hiring-plan

## GitLab Blog

**EVERYONE CAN CONTRIBUTE**

Anatomy of a Blog Post:

1. Big Picture
2. Introduction
3. Body
4. Conclusion

Community Writers Program: **Get paid to write for GitLab**

You can earn up to $200 per article writing for the GitLab Blog.



# Sales

Gitlab use Salesforce

Customer On-boarding Checklist: https://about.gitlab.com/handbook/customer-success/

Sales Qualification Questions: https://about.gitlab.com/handbook/sales-qualification-questions/

Standard questions from possible customer: https://about.gitlab.com/handbook/positioning-faq/

Sales demo: https://about.gitlab.com/handbook/sales/demo/



# Finance





