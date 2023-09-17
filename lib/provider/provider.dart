import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repo/sign_in.dart';
import '../repo/sign_up.dart';

// provider
final helloWorldProvider = Provider((ref) => 'Hello world');

//StateProvider
final counterProvider = StateProvider((ref) => 0);

/*autoDispose which will make the provider automatically destroy
 its state when it is no longer being listened to.*/
final counterProviderAndAutoDispose = StateProvider.autoDispose((ref) => 0);

//autoDispose example

/*final userProvider = FutureProvider.autoDispose.family<User, int>((ref, userId) async {
  return fetchUser(userId);
});*/

//family which allows creating a provider from external parameters.
final myFamilyProvider = Provider.family<String, int>((ref, id) => '$id');

// final getLatestNewsDetailsProvider = FutureProvider.family((ref,newsId) => AuthRepo().getNewsDetails(newsId.toString()));

//futureProvider
// final studentProvider = FutureProvider<List<StudentInformationModel>>((ref) => StudentRepo().getAllStudents());

//ChangeNotifierProvider
final logInProvider = ChangeNotifierProvider((ref) => SignInRepo());
final signUpProvider = ChangeNotifierProvider((ref) => SignUpRepo());


// provider
final isReadProvider = Provider<bool>((ref) {
  final color = ref.watch(selectedButtonProvider);
  return color == "red";
});

//StateProvider
final selectedButtonProvider = StateProvider<String>((ref) => '');


final themeProvider = StateProvider<bool>((ref) => true);