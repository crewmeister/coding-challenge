# Crewmeister coding challenge 

Hello and thanks in participating in the crewmeister coding challenge. This
coding exercise will help us get a better feeling about your coding process.

If you have any questions, we're happy to help you. Just drop us an 
email: dev+coding-challange@crewmeister.com 

# Scenario

At crewmeister on of our products is the absence manager. With this product 
company owners can manage sickness and vacations of employees. Some of our 
customers want to export their employees absences to outlook. To make our 
customers happy we decided to provide an iCal export. 
https://en.wikipedia.org/wiki/ICalendar 

## User Story

As owner of a crew I want to be able to export my employees absences so 
that I can import them into outlook.

## Dev Notes/Todos

- Fetch members and absences from our API (using CmChallenge::Api)
- Build the ical file (maybe use a gem?)
  - Description should be: 
     - "#{member.name} is on vacation"
     - "#{member.name} is sick"
- Write the ical file somewhere to disk (location is irrelevant for now)

