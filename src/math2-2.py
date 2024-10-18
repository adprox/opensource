print("Hello World")
def partition(list,low,high):
    i = low-1
    pivot = list[high]
    
    for j in range(low, high):
        if list[j] < pivot:
            i = i+1
            list[i], list[j] = list[j], list[i]
    
    list[i+1], list[high] = list[high], list[i+1]
    return (i+1)

def quickSort(list,low,high):
    if low < high:
        pi = partition(list,low,high)
        quickSort(list, low, pi-1)
        quickSort(list, pi+1, high)

list = [10, 7, 3, 9, 1, 5]
print("Original list =%s" % list)

n = len(list)
quickSort(list,0,n-1)

print("Sorted list by Quicksort method")
print(list)
