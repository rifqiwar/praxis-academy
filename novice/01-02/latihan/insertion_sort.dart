// for i <- 1 to length[A] - 1
//    do key <- A[i]
//    j <- i
//    while j > 0 and A[j - 1] > key
//        do A[j] <- A[j - 1]
//        j <- j - 1
//    A[j] <- key


void main(){
  var a = [1, 2, 3, 4, 5];
  for (var i=0; i<a.length ; i++){
    var key = a[i];
    var j = i;

    while (j> 0 && a[j - i] > key ){
      a[j] = a[j-1];
      j = j - 1;
      a[j] = key;
    }

  }
  print(a);
}