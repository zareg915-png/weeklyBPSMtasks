#whats your name 

def interigation_question():
    question = {"name": "What's your name?", "age": "How old are you?", "colour": "What's your favourite colour?", "hobby": "Do you like python?", "quiz": "The world is flat :true or false?"}
    answers = {}
    for key in question:
        answer = input(question[key] + " ").strip()
        if key == 'name':
            print(f"\nHello, {answer}!")
        if key == "age" :
            while not answer.isnumeric():
                print("please enter a numaric value for age")
                answer = input(question[key] + " ").strip()
            print(f"\n{answer} is a good age to be!")
        if key == "colour":
            if answer.lower() == "purple":
                print("OMG, mine too!")
            if answer.lower != "purple":
                print(f"\n{answer} is a nice colour!")
        if key == "hobby":
            if answer.lower() == "yes":
                print("can't relate")
            elif answer.lower() == "no":
                print("twinsing") 
            else:
                print("Please answer with yes or no")
        if key == "quiz":
            if answer.lower() == "true":
                print("WRONG! The world is round!")
            elif answer.lower() == "false":
                print("Correct! The world is round!")
            else:
                print("Please answer with true or false")
        answers[key] = answer
    return answers

interigation_question()
