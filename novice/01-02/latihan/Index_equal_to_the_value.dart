//T=i 
//Index_Equal_Value(T, st, end)
// if st > end
//     then return -1
// mid <- (st + end) / 2
// if T[mid] > mid
//     then return Index_Equal_Value(T, st, mid - 1)
// else if T[mid] < mid
//     then return Index_Equal_Value(T, mid + 1, end)
// else return mid


void main(){
print(nama());

}

int nama(){
  var T = [1,2,3];
  var mid = ((T[0]+T[2])/1);

var index = 2;
if (index == (T[1]>T[2])){
  return -1;
}else if (index == mid){
  return 0;
}else {
  return 1;
};
}