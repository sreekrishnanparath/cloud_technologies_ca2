def detection_process(event, context):

    # "print" statement (redirected to log)
    print(event)
    
    # return value
    return {
        "detection": event
        }
