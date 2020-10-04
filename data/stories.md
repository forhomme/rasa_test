## say goodbye
* goodbye
  - utter_goodbye

## bot challenge
* bot_challenge
  - utter_iamabot

## survey happy path
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
    - form{"name": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye

## survey stop
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
* out_of_scope
    - utter_ask_continue
* deny
    - action_deactivate_loop
    - form{"name": null}
    - utter_goodbye

## survey continue
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
* out_of_scope
    - utter_ask_continue
* affirm
    - health_form
    - form{"name": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye

## no survey
* greet
    - utter_greet
* deny
    - utter_goodbye

## ask health questions form
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
    - slot{"requested_slot": "exercise"}
* ask_exercise
    - utter_exercise_info
    - utter_ask_continue
* affirm
    - health_form
    - form{"name": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye
    
## ask diet questions form
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
    - slot{"requested_slot": "diet"}
* ask_eat_healthy
    - utter_diet_info
    - utter_ask_continue
* affirm
    - health_form
    - form{"name": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye
    
## ask stress questions form
* greet
    - utter_greet
* affirm
    - health_form
    - form{"name": "health_form"}
    - slot{"requested_slot": "stress"}
* ask_stress_level
    - utter_stress_level
    - utter_ask_continue
* ask_lower_stress
    - utter_stress_info
    - utter_ask_continue
* affirm
    - health_form
    - form{"name": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye


## ask diet questions
* ask_eat_healthy
    - utter_diet_info

## ask stress questions
* ask_lower_stress
    - utter_stress_info

## ask exercise
* ask_exercise
    - utter_exercise_info
    
## interactive_story_1
* greet
    - utter_greet
* affirm
    - health_form
    - active_loop{"name": "health_form"}
    - slot{"requested_slot": "confirm_exercise"}
    - slot{"confirm_exercise": true}
    - slot{"requested_slot": "exercise"}
    - slot{"exercise": "yoga"}
    - slot{"exercise": "yoga"}
    - slot{"requested_slot": "sleep"}
    - slot{"sleep": "8 hours"}
    - slot{"sleep": "8 hours"}
    - slot{"requested_slot": "diet"}
    - slot{"diet": "yes"}
    - slot{"requested_slot": "stress"}
    - slot{"stress": "low"}
    - slot{"stress": "low"}
    - slot{"requested_slot": "goal"}
    - slot{"goal": "I want to become healthier"}
    - active_loop{"name": null}
    - slot{"requested_slot": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye

## interactive_story_2
* greet
    - utter_greet
* affirm
    - health_form
    - active_loop{"name": "health_form"}
    - slot{"requested_slot": "confirm_exercise"}
    - slot{"confirm_exercise": false}
    - slot{"requested_slot": "sleep"}
    - slot{"sleep": "2 hours"}
    - slot{"sleep": "2 hours"}
    - slot{"requested_slot": "diet"}
    - slot{"diet": "of course"}
    - slot{"requested_slot": "stress"}
    - slot{"stress": "medium"}
    - slot{"stress": "medium"}
    - slot{"requested_slot": "goal"}
    - slot{"goal": "have some exercise"}
    - active_loop{"name": null}
    - slot{"requested_slot": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye

## interactive_story_1
* greet
    - utter_greet
* affirm
    - health_form
    - active_loop{"name": "health_form"}
    - slot{"requested_slot": "confirm_exercise"}
    - slot{"confirm_exercise": true}
    - slot{"requested_slot": "exercise"}
    - slot{"exercise": "run"}
    - slot{"exercise": "run"}
    - slot{"requested_slot": "sleep"}
    - slot{"sleep": "8 hours"}
    - slot{"sleep": "8 hours"}
    - slot{"requested_slot": "diet"}
* ask_eat_healthy
    - utter_diet_info
    - utter_ask_continue
* affirm
    - health_form
    - slot{"requested_slot": "diet"}
    - slot{"diet": "yes"}
    - slot{"requested_slot": "stress"}
* ask_stress_level
    - utter_stress_level
    - utter_ask_continue
* affirm
    - health_form
    - slot{"requested_slot": "stress"}
    - slot{"stress": "low"}
    - slot{"stress": "low"}
    - slot{"requested_slot": "goal"}
    - slot{"goal": "eat better"}
    - active_loop{"name": null}
    - slot{"requested_slot": null}
    - utter_slots_values
* thankyou
    - utter_no_worries
    - utter_goodbye
