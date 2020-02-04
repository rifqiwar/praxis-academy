// for i <- length[A] - 2 downto 0
//    do key <- A[i]
//    j <- i + 1
//    while j < length[A] - 1 and key > A[j]
//        do A[j - 1] <- A[j]
//        j <- j + 1
//    A[j - 1] <- key


void main(){
  var a = [1, 2, 3, 4, 5];
  for (var i=0; i<a.length ; i++){
    var key = a[i];
    var j = i;

    while (j< a.length -1 && key >a[j] ){
      a[j-1] = a[j];
      j = j + 1;
      a[j-1] = key;
    }

  }
  print(a);
}