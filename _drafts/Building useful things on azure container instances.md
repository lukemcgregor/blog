---
title:  "Building useful things on Azure Container Instances"
excerpt: "One of the things I have found frustrating about the container offerings of both Azure and AWS is that they both require creation and management of actual VMs underneath the container services. his has both cost and maintenance implications which make containers difficult for small and even medium microservice deployments. Azure has recently released Azure Container instances which is containers on a shared managed platform."
---

One of the things I have found frustrating about the container offerings of both Azure and AWS is that they both require creation and management of actual VMs underneath the container services. This has both cost and maintenance implications which make containers difficult for small and even medium microservice deployments. Azure has recently released (in preview) Azure Container instances which is containers on a shared managed platform. Instead of paying for and managing VMs you pay for the containers directly and ignore management of the platform. This is super exciting, especially if you are building small applications.

Container instances are still new and there aren't too many documents and articles about how to use these for more than demo style applications. I think a great way to demonstrate how to use container instances is to build a microservice on top of these.

Lets imagine that we are wanting a (rather contrived) microservice which will track stars on git repos over time. This is going to have a bunch of bits that will compose the service, a webservice where you can start tracking repos, and get history on ones you have tracked, some storage and a background task to poll github and see how many stars the repo currently has (yes there are other ways of getting this info but demos).

Lets use node and mongo to write this microservice, with Dockerhub and a git repo to do our builds. 