class TasksToSpec
  include Somthing

  def method_name
  # Some things to figure out:
  #   Ticketing System is used?
  #   What Test Type:
  #     JMX JMETER Performance
  #       Empty jmx script
  #     API
  #     UI/UX
  #   How data is accessed or provided API / Alert / Message
  #   When to trigger the test script build
  #     Ideas: Some Triggers: Slack/Message Test Runner TestAsAService:ProcessTestBuildQue
  #       IF API - Implement Hook on scheduled test suit runs
  #         If no scheduled runs hook off empty commit / Test Script Build Commit
  #       IF Alert - System Alert ::Rule:: To File
  #         Parse File Type
  #         Hook off of Trigger
  #       IF Message - Email
  #         Forward - Rule pick up....
  #         Email copy paste to Test Build Commit
  #           **Need Test Build Style Guide for Commit Type
  #           Creates Open Branch ["${Username}-${Feature}-Test-Build"]

  # Ticket >> Scan Ticket for Keywords >> Build Feature Context Scenario Tests on Keywords >>
  # Scrape alert message into JSON obj?
  # Determine Type UI/UX OR API OR ?SomThingElse?
  # Count the # of Given and # of Whens
  # Count # of Expected Actual

  # Parse Ticket Data for Where & Who/What
  # Given: Page(Name), User(s) visit
  #   Describe ( Where and Who/What )

  # Parse Ticket Data for Where & Who/What
  # When: User(s) interact with menu(s)
  #   Context ( of What and Doing )

  # Parse Ticket Data for Where & Who/What
  # Then: Menu(s): do
  #   It ( Expected Actual )

  # Call API:
  # With Story and Task ID
  # Parse description for Given When Then

  # let type = ${type from task}
  # let ${UI Page Support Name}
  # ${Describe Where & Who/What}
  # ${it.Context.What.Doing}
  #
  #
  # Once Ticket Data has been parsed
  #    case  (type == UI):
  #      run => generate_uiux_script
  #     when  (type == API)
  #      run => generate_api_script
  #     break;
  #    end
    # Generate String TYPE:UI/UX With parsed data
          #/ <reference types="cypress" />
          # import {UI Page Name: } from " ${UI Page Support Name} "
          # describe('${Describe Where & Who/What}'. () => {
          #   const val = new ClassUI
          #   beforeEach(() =>{
          #     # Context.on.about.to.do(ing)
          #   })
          #   it('check_ui_for', () => {
          #     val.${it.Context.What.Doing} #New_Support_Class
          #   })
          #   it('check_ui_component', () => {
          #     val.${it.Context.What.Doing} #New_Support_Class
          #   })
          # })

    # Generate String TYPE:API  With parsed data
          #/ <reference types="cypress" />
          # import {} from " ${API Name} "
          # describe('${Describe Where & Who/What}'. () => {
          #   const valapi = new ClassAPI
          #   beforeEach(() =>{
          #     # Context.on - Same API
          #   })
          #   it('Check API${name} for: ', () => {
          #     let url = ${Some Idea}
          #     let code = 200
          #     let data = ${Some Data Type}
          #     let type = ${type}
          #     valapi.verify_response_code(url, code)
          #     valapi.verify_body(url, data)
          #     valapi.verify_body_data(url, type)
          #   })
          # })

    # Save the hydrogenated strings above to a ${name}.spec.js file
    # check out Framework ?Check Git Commit Types
    # Get included files or bring in after?
    # Finish Code stubbing/writing
    # Check in / merge
    # Observe code run(s)

# End of new ticket created



  end
end
