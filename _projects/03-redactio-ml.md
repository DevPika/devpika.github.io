---
title: Redactio.ml - Automatic personal info redaction 
permalink: /projects/redactio-ml/
subtitle: Automatic personal info redaction
image: /assets/images/redactio.png
tags: ["Machine Learning"]
date: 2019-03-03T00:00:00Z
---

Redactio.ml, a solution developed during the IBM 24-hr Hackathon organised at IIITDM Jabalpur. It allows you to anonymize your data by automatically detecting fields that could be personal information and bringing them to your notice before redaction. The fields identified include: Name, Gender, govt. IDs like Aadhaar, PAN, and also bank details like Credit/Debit card numbers and Bank account number. Companies spend a lot in maintaining compliance with policies like GDPR, since experts would have to manually delete personal information from chats and other interactions with their customers for both internal and external purposes. Our solution would be a boon to them. It would also be useful for Complaint Systems online forums, automating the process done by moderators.


![Redactio-screenshot](https://raw.githubusercontent.com/amhndu/Hackathon2019/master/screenshots/review_example.png)

Our focus was on providing a minimalist UI for the input area, where the user had the power to individually select and redact different detected fields. This input provision could replace the text input of various applications like grievances platforms, company chat systems, forums etc. Since the fields are highlighted in grey, it provides the user with a visual way to know the proportion of personal information in his otherwise inconspicuous post.

We have combined IBM Natural Language Understanding (NLU) with a custom trained model using IBM Watson Knowledge Studio (WKS) to find these fields in unstructered text. We achieve good results by using Dictionary based and Rule(Regex) based model for annotation and training custom model.

Please visit the project website to see the live version or the repository for more screenshots and the source!

Explore:
* [Project's website][project-website]
* [Project's Github repo][project-github-repo]

[project-website]: https://redactio.herokuapp.com/
[project-github-repo]: https://github.com/amhndu/Hackathon2019