# README

## Link to live site
https://reality-realestate.herokuapp.com/

## How it was built
I used Ruby, Ruby-on-Rails, Javascript, HTML and a whole lot of coffee

## Features / Things to Know
What this website aims to do is give the ability for property applicants and owners to give each other feedback at the time of decision on whether an application is approved or rejected for a rental property.

Users can at this stage create accounts, make an application and reject or approve it, depending if they have selected themselves as applicants or owners during the sign up phase.

## Look and Feel
The colour scheme is pretty funky, which was inspired by Up Bank's use of colours. The rebellious nature of these bright oranges and yellows is a way to express how the real estate industry needs a shakeup regarding more informed users and better practices.

## Bugs
Currently the site will break if trying to create an application as the show page requires the use of "@application.applicant_feedback.ease" to display feedback. Deleting the ease "bandaid fixes" this issue and allows a user to create an application. Leaving it allows the feedback to display.

The livesite also has an issue with not accepting any passwords, even when creating accounts.

There is also a bug when an owner logs in and applies to another house. Both the owner of the house and the current user can alter the outcome.

## Planned Features
Bug fixes and I'd like to have more fields expressing details of the users, properties and feedback

## My own experience developing the site
I learned a lot about Ruby and Rails during this process. I don't think it's scalable language in the real world but I am thankful that it can serve as a platform to learn other object oriented lanaguages.

For this site I hadn't considered the complexity of the code that was required. Very often was the case that custom code was needed for in my view, very basic things such as one file talking to another. My hope is that Node.js offers something more complete and versatile.

The other thing I'm proud of is asking for help. I often feel that this is a hard thing to do because as a society it can be seen as a weakness or it conflicts with one's sense of ego. Now I feel comfortable to do it often.
