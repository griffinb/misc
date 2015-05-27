def answer(x):
    input = [int(x) for x in str(x)]

    if len(input) == 1:
        return input[0]
    else:
        return answer(sum(input))
