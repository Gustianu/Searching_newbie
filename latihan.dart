int sequentialSearch(List<int> arr, int x, int perbandingan ) {
  int N = arr.length;
  // perulangan untuk mencari data yang dicari secara linear  
  for (int i =0; i < N; i++) {
    perbandingan++;
    if (arr[i] == x) {
     print('jumlah perbandingan sebanyak $perbandingan'); // correctt
     return i;}
  }
  print('jumlah perbandingan $perbandingan');
  // mengembalikan nilai method menjadi -1
  return -1;
}

int binarySearch(List<int> arr, int l, int r, int x, int perbandingan) {
  while (r - l > 1) {
    perbandingan++;
    int mid = (l + r) ~/ 2;
    if(arr[mid] < x){  // untuk mengecek data yang dicari
      l = mid + 1;
    } else{
      r = mid;
    }
  }
  if (arr[l] == x) {
    print('jumlah perbandingan sebanyak $perbandingan');
    return l;
  } else if (arr[r] == x) {
    print('jumlah perbandingan sebanyak $perbandingan');
    return r;
  } else {
    print('jumlah perbandingan sebanyak $perbandingan');
    return -1;
  }
}
void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 10;
  int k = 0;
  int size = arr.length;

  print('Linear Search');
  int result = sequentialSearch(arr, x, k);
  if (result == -1) {
    print('elemen tidak ditemukan');
  } else{
    print('Elemen ditemukan pada indeks ke: $result\n');
  }

  print('Binary Search');
  int result2 = binarySearch(arr, 0, size -1, x, k);
  if (result2 == -1) {
    print('elemen tidak ditemukan');
  } else{
    print('Elemen ditemukan pada indeks ke: $result');
  }
}

