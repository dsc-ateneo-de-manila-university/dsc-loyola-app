import 'package:flutter/material.dart';

class AppData {
  static final homepageText = [
    {
      'title' : 'Headline 1',
      'description' : 'Short Desc 1'
    },
    {
      'title' : 'Headline 2',
      'description' : 'Short Desc 2'
    },
    {
      'title' : 'Headline 3',
      'description' : 'Short Desc 3'
    }
  ];

  //details for all individual activities
  static final events = {
    'sb' : {
      'header' : 'DSC Sandbox',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_Sandbox.png')
    },
    'gsc' : {
      'header' : 'DSC Google Solution Challenge',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : null
    },
    'lu' : {
      'header' : 'LinkedUp',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_LinkedUp.png')
    },
    'pg' : {
      'header' : 'Playground',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_Playground.png')
    },
    'tf' : {
      'header' : 'TechFest',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_TechFest.png')
    },
  };
  static final jobs = {};
  static final projects = {};
  static final initiatives = {};

  static final allActivities = [
    ...events.values.toList(),
    ...jobs.values.toList(),
    ...projects.values.toList(),
    ...initiatives.values.toList()
  ];

  //putting what the user saved in lists
  //used in savedActivities map down there v
  static final eventsApplied = [
    {'header' : 'Playground',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_Playground.png')},
    {'header' : 'TechFest',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_TechFest.png')},
    {'header' : 'LinkedUp',
      'description' : 'Description here',
      'date' : 'MM/DD/YYYY',
      'time' : 'HH:MM - HH:MM am/pm',
      'saved' : false,
      'image' : Image.asset('images/Vertical_Card_LinkedUp.png')},
  ];
  static final projectsApplied = [];
  static final jobsSaved = [];
  static final initiativesSaved = [];

  //putting what the lists into a map
  //used to take the list needed for new screen (savedActivitiesList in tracker.dart)
  static final savedActivities = {
    'Events Applied' : eventsApplied,
    'Projects Applied' : projectsApplied,
    'Jobs Saved' : jobsSaved,
    'Initiatives Saved' : initiativesSaved
  };  
}