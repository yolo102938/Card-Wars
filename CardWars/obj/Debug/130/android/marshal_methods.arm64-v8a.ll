; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [236 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 38
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 5
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 26
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 57
	i64 316157742385208084, ; 4: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 31
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 13
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 47
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 91
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 109
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 37
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 107
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 117
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 85
	i64 1315114680217950157, ; 13: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 22
	i64 1392315331768750440, ; 14: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 70
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 113
	i64 1465843056802068477, ; 16: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 72
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 20
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 49
	i64 1636321030536304333, ; 19: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 43
	i64 1731380447121279447, ; 20: Newtonsoft.Json => 0x18071957e9b889d7 => 7
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 21
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 57
	i64 1837131419302612636, ; 23: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 83
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 17
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 48
	i64 2064708342624596306, ; 26: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 100
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 7
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 52
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 24
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 37
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 115
	i64 2304837677853103545, ; 32: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 56
	i64 2329709569556905518, ; 33: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 45
	i64 2369649555172245513, ; 34: CardWars => 0x20e2afb72a344009 => 0
	i64 2470498323731680442, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 30
	i64 2479423007379663237, ; 36: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 61
	i64 2497223385847772520, ; 37: System.Runtime => 0x22a7eb7046413568 => 14
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 16
	i64 2592350477072141967, ; 39: System.Xml.dll => 0x23f9e10627330e8f => 15
	i64 2624866290265602282, ; 40: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2787234703088983483, ; 41: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 58
	i64 3017704767998173186, ; 42: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 85
	i64 3143515969535650208, ; 43: Xamarin.Firebase.Encoders => 0x2ba0031e85f0a9a0 => 74
	i64 3289520064315143713, ; 44: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 44
	i64 3303437397778967116, ; 45: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 18
	i64 3311221304742556517, ; 46: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 12
	i64 3344514922410554693, ; 47: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 103
	i64 3364695309916733813, ; 48: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 71
	i64 3411255996856937470, ; 49: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 92
	i64 3427548605411023127, ; 50: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x2f91194bf3e8d917 => 90
	i64 3493805808809882663, ; 51: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 59
	i64 3531994851595924923, ; 52: System.Numerics => 0x31042a9aade235bb => 11
	i64 3571415421602489686, ; 53: System.Runtime.dll => 0x319037675df7e556 => 14
	i64 3716579019761409177, ; 54: netstandard.dll => 0x3393f0ed5c8c5c99 => 105
	i64 3727469159507183293, ; 55: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 55
	i64 3768479575991719956, ; 56: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0x344c5435464d1814 => 104
	i64 3772598417116884899, ; 57: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 38
	i64 4201423742386704971, ; 58: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 31
	i64 4239882675311405204, ; 59: Xamarin.Firebase.Encoders.JSON => 0x3ad716d44f44e894 => 75
	i64 4247996603072512073, ; 60: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 95
	i64 4335356748765836238, ; 61: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 83
	i64 4525561845656915374, ; 62: System.ServiceModel.Internals => 0x3ece06856b710dae => 114
	i64 4636684751163556186, ; 63: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 63
	i64 4702770163853758138, ; 64: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 72
	i64 4759461199762736555, ; 65: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 46
	i64 4794310189461587505, ; 66: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 16
	i64 5203618020066742981, ; 67: Xamarin.Essentials => 0x4836f704f0e652c5 => 66
	i64 5205316157927637098, ; 68: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 51
	i64 5376510917114486089, ; 69: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 61
	i64 5408338804355907810, ; 70: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 60
	i64 5451019430259338467, ; 71: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 29
	i64 5507995362134886206, ; 72: System.Core.dll => 0x4c705499688c873e => 8
	i64 5574231584441077149, ; 73: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 19
	i64 5692067934154308417, ; 74: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 65
	i64 5757522595884336624, ; 75: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 27
	i64 6092862891035488599, ; 76: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 80
	i64 6118452257458269359, ; 77: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 68
	i64 6319713645133255417, ; 78: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 47
	i64 6401687960814735282, ; 79: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 45
	i64 6403742896930319886, ; 80: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 69
	i64 6504860066809920875, ; 81: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 24
	i64 6548213210057960872, ; 82: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 34
	i64 6554405243736097249, ; 83: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 94
	i64 6589202984700901502, ; 84: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 88
	i64 6591024623626361694, ; 85: System.Web.Services.dll => 0x5b7805f9751a1b5e => 115
	i64 6657448669945361351, ; 86: Xamarin.Google.Android.Play.Integrity => 0x5c64024aea7d73c7 => 86
	i64 6876862101832370452, ; 87: System.Xml.Linq => 0x5f6f85a57d108914 => 116
	i64 6878582369430612696, ; 88: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 84
	i64 6894844156784520562, ; 89: System.Numerics.Vectors => 0x5faf683aead1ad72 => 12
	i64 6975328107116786489, ; 90: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 67
	i64 7026573318513401069, ; 91: Xamarin.Firebase.Encoders.Proto.dll => 0x618367346e3a9ced => 76
	i64 7103753931438454322, ; 92: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 42
	i64 7141577505875122296, ; 93: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 1
	i64 7152933704405506614, ; 94: Xamarin.Google.Android.Play.Integrity.dll => 0x6344534e69025a36 => 86
	i64 7385250113861300937, ; 95: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 77
	i64 7476537270401454554, ; 96: Xamarin.Firebase.Encoders.JSON.dll => 0x67c1ff08f83f51da => 75
	i64 7488575175965059935, ; 97: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 116
	i64 7602111570124318452, ; 98: System.Reactive => 0x698020320025a6f4 => 13
	i64 7637365915383206639, ; 99: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 66
	i64 7654504624184590948, ; 100: System.Net.Http => 0x6a3a4366801b8264 => 10
	i64 7735352534559001595, ; 101: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 99
	i64 7820441508502274321, ; 102: System.Data => 0x6c87ca1e14ff8111 => 106
	i64 7836164640616011524, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 20
	i64 7904570928025870493, ; 104: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 78
	i64 7940488133782528123, ; 105: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 93
	i64 7969431548154767168, ; 106: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 78
	i64 8044118961405839122, ; 107: System.ComponentModel.Composition => 0x6fa2739369944712 => 112
	i64 8083354569033831015, ; 108: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 44
	i64 8103644804370223335, ; 109: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 108
	i64 8167236081217502503, ; 110: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 3
	i64 8187640529827139739, ; 111: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 102
	i64 8398329775253868912, ; 112: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 28
	i64 8426919725312979251, ; 113: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 46
	i64 8465511506719290632, ; 114: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 81
	i64 8598790081731763592, ; 115: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 40
	i64 8601935802264776013, ; 116: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 60
	i64 8605236455805933405, ; 117: Xamarin.Google.Android.Recaptcha.dll => 0x776bf0f6cc8dd75d => 87
	i64 8626175481042262068, ; 118: Java.Interop => 0x77b654e585b55834 => 3
	i64 8684531736582871431, ; 119: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 111
	i64 8702320156596882678, ; 120: Firebase.dll => 0x78c4da1357adccf6 => 2
	i64 8853378295825400934, ; 121: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 98
	i64 8951477988056063522, ; 122: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 54
	i64 9057635389615298436, ; 123: LiteDB => 0x7db32f65bf06d784 => 4
	i64 9296667808972889535, ; 124: LiteDB.dll => 0x8104661dcca35dbf => 4
	i64 9312692141327339315, ; 125: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 65
	i64 9324707631942237306, ; 126: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 21
	i64 9490522350195345034, ; 127: Xamarin.Google.Android.Recaptcha => 0x83b51bcb684c868a => 87
	i64 9662334977499516867, ; 128: System.Numerics.dll => 0x8617827802b0cfc3 => 11
	i64 9678050649315576968, ; 129: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 30
	i64 9735414641753518179, ; 130: Xamarin.Firebase.Encoders.Proto => 0x871b240946daf063 => 76
	i64 9774216967140627647, ; 131: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 73
	i64 9796610708422913120, ; 132: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 77
	i64 9808709177481450983, ; 133: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9825649861376906464, ; 134: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 27
	i64 9834056768316610435, ; 135: System.Transactions.dll => 0x8879968718899783 => 107
	i64 9875200773399460291, ; 136: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 91
	i64 9907349773706910547, ; 137: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 40
	i64 9998632235833408227, ; 138: Mono.Security => 0x8ac2470b209ebae3 => 117
	i64 10038780035334861115, ; 139: System.Net.Http.dll => 0x8b50e941206af13b => 10
	i64 10144742755892837524, ; 140: Firebase => 0x8cc95dc98eb5bc94 => 2
	i64 10226222362177979215, ; 141: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 100
	i64 10229024438826829339, ; 142: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 34
	i64 10321854143672141184, ; 143: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 97
	i64 10352330178246763130, ; 144: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 80
	i64 10376576884623852283, ; 145: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 59
	i64 10406448008575299332, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 103
	i64 10430153318873392755, ; 147: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 32
	i64 10847732767863316357, ; 148: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 22
	i64 11019817191295005410, ; 149: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 19
	i64 11023048688141570732, ; 150: System.Core => 0x98f9bc61168392ac => 8
	i64 11037814507248023548, ; 151: System.Xml => 0x992e31d0412bf7fc => 15
	i64 11071824625609515081, ; 152: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 88
	i64 11162124722117608902, ; 153: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 64
	i64 11171845786728836392, ; 154: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 93
	i64 11336891506707244397, ; 155: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 73
	i64 11340910727871153756, ; 156: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 33
	i64 11376351552967644903, ; 157: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 67
	i64 11392833485892708388, ; 158: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 53
	i64 11529969570048099689, ; 159: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 64
	i64 11580057168383206117, ; 160: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 17
	i64 11591352189662810718, ; 161: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 58
	i64 11597940890313164233, ; 162: netstandard => 0xa0f429ca8d1805c9 => 105
	i64 11672361001936329215, ; 163: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 42
	i64 12137774235383566651, ; 164: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 62
	i64 12336928085371509187, ; 165: Xamarin.GooglePlayServices.Auth.Api.Phone => 0xab3592bad41bd9c3 => 90
	i64 12346958216201575315, ; 166: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 96
	i64 12451044538927396471, ; 167: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 41
	i64 12466513435562512481, ; 168: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 50
	i64 12487638416075308985, ; 169: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 36
	i64 12538491095302438457, ; 170: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 25
	i64 12550732019250633519, ; 171: System.IO.Compression => 0xae2d28465e8e1b2f => 110
	i64 12700543734426720211, ; 172: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 26
	i64 12828192437253469131, ; 173: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 101
	i64 12854524964145442905, ; 174: Xamarin.Firebase.Encoders.dll => 0xb26472594447b059 => 74
	i64 12963446364377008305, ; 175: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 109
	i64 12982280885948128408, ; 176: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 35
	i64 13129914918964716986, ; 177: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 39
	i64 13370592475155966277, ; 178: System.Runtime.Serialization => 0xb98de304062ea945 => 113
	i64 13401370062847626945, ; 179: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 62
	i64 13404347523447273790, ; 180: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 28
	i64 13454009404024712428, ; 181: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 89
	i64 13465488254036897740, ; 182: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 99
	i64 13470551208741146653, ; 183: CardWars.dll => 0xbaf102f44db9901d => 0
	i64 13491513212026656886, ; 184: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 23
	i64 13572454107664307259, ; 185: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 55
	i64 13621154251410165619, ; 186: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 35
	i64 13647894001087880694, ; 187: System.Data.dll => 0xbd670f48cb071df6 => 106
	i64 13828521679616088467, ; 188: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 98
	i64 13829530607229561650, ; 189: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 79
	i64 13959074834287824816, ; 190: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 41
	i64 14124974489674258913, ; 191: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 25
	i64 14165531176311179688, ; 192: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 69
	i64 14172845254133543601, ; 193: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 52
	i64 14261073672896646636, ; 194: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 53
	i64 14382082037123372364, ; 195: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 70
	i64 14495724990987328804, ; 196: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 56
	i64 14524915121004231475, ; 197: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 96
	i64 14644440854989303794, ; 198: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 51
	i64 14789919016435397935, ; 199: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 71
	i64 14792063746108907174, ; 200: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 89
	i64 14809388726477333247, ; 201: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 94
	i64 14852515768018889994, ; 202: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 33
	i64 14987728460634540364, ; 203: System.IO.Compression.dll => 0xcfff1ba06622494c => 110
	i64 14988210264188246988, ; 204: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 36
	i64 15099396616243600100, ; 205: Xamarin.KotlinX.Coroutines.Play.Services => 0xd18bd538f1ef5ae4 => 104
	i64 15150743910298169673, ; 206: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 54
	i64 15279429628684179188, ; 207: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 102
	i64 15370334346939861994, ; 208: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 32
	i64 15582737692548360875, ; 209: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 49
	i64 15609085926864131306, ; 210: System.dll => 0xd89e9cf3334914ea => 9
	i64 15930129725311349754, ; 211: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 95
	i64 16154507427712707110, ; 212: System => 0xe03056ea4e39aa26 => 9
	i64 16423015068819898779, ; 213: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 101
	i64 16467346005009053642, ; 214: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 82
	i64 16565028646146589191, ; 215: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 112
	i64 16621146507174665210, ; 216: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 29
	i64 16822611501064131242, ; 217: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 108
	i64 16833383113903931215, ; 218: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 16866861824412579935, ; 219: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 1
	i64 17024911836938395553, ; 220: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 18
	i64 17037200463775726619, ; 221: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 43
	i64 17434242208926550937, ; 222: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 84
	i64 17605100189928655442, ; 223: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 68
	i64 17677828421478984182, ; 224: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 79
	i64 17704177640604968747, ; 225: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 50
	i64 17710060891934109755, ; 226: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 48
	i64 17891337867145587222, ; 227: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 97
	i64 17928294245072900555, ; 228: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 111
	i64 17945795017270165205, ; 229: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 82
	i64 17986907704309214542, ; 230: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 92
	i64 18116111925905154859, ; 231: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 23
	i64 18129453464017766560, ; 232: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 114
	i64 18260797123374478311, ; 233: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 39
	i64 18337470502355292274, ; 234: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 81
	i64 18380184030268848184 ; 235: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 63
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [236 x i32] [
	i32 38, i32 5, i32 26, i32 57, i32 31, i32 13, i32 47, i32 91, ; 0..7
	i32 109, i32 37, i32 107, i32 117, i32 85, i32 22, i32 70, i32 113, ; 8..15
	i32 72, i32 20, i32 49, i32 43, i32 7, i32 21, i32 57, i32 83, ; 16..23
	i32 17, i32 48, i32 100, i32 7, i32 52, i32 24, i32 37, i32 115, ; 24..31
	i32 56, i32 45, i32 0, i32 30, i32 61, i32 14, i32 16, i32 15, ; 32..39
	i32 6, i32 58, i32 85, i32 74, i32 44, i32 18, i32 12, i32 103, ; 40..47
	i32 71, i32 92, i32 90, i32 59, i32 11, i32 14, i32 105, i32 55, ; 48..55
	i32 104, i32 38, i32 31, i32 75, i32 95, i32 83, i32 114, i32 63, ; 56..63
	i32 72, i32 46, i32 16, i32 66, i32 51, i32 61, i32 60, i32 29, ; 64..71
	i32 8, i32 19, i32 65, i32 27, i32 80, i32 68, i32 47, i32 45, ; 72..79
	i32 69, i32 24, i32 34, i32 94, i32 88, i32 115, i32 86, i32 116, ; 80..87
	i32 84, i32 12, i32 67, i32 76, i32 42, i32 1, i32 86, i32 77, ; 88..95
	i32 75, i32 116, i32 13, i32 66, i32 10, i32 99, i32 106, i32 20, ; 96..103
	i32 78, i32 93, i32 78, i32 112, i32 44, i32 108, i32 3, i32 102, ; 104..111
	i32 28, i32 46, i32 81, i32 40, i32 60, i32 87, i32 3, i32 111, ; 112..119
	i32 2, i32 98, i32 54, i32 4, i32 4, i32 65, i32 21, i32 87, ; 120..127
	i32 11, i32 30, i32 76, i32 73, i32 77, i32 5, i32 27, i32 107, ; 128..135
	i32 91, i32 40, i32 117, i32 10, i32 2, i32 100, i32 34, i32 97, ; 136..143
	i32 80, i32 59, i32 103, i32 32, i32 22, i32 19, i32 8, i32 15, ; 144..151
	i32 88, i32 64, i32 93, i32 73, i32 33, i32 67, i32 53, i32 64, ; 152..159
	i32 17, i32 58, i32 105, i32 42, i32 62, i32 90, i32 96, i32 41, ; 160..167
	i32 50, i32 36, i32 25, i32 110, i32 26, i32 101, i32 74, i32 109, ; 168..175
	i32 35, i32 39, i32 113, i32 62, i32 28, i32 89, i32 99, i32 0, ; 176..183
	i32 23, i32 55, i32 35, i32 106, i32 98, i32 79, i32 41, i32 25, ; 184..191
	i32 69, i32 52, i32 53, i32 70, i32 56, i32 96, i32 51, i32 71, ; 192..199
	i32 89, i32 94, i32 33, i32 110, i32 36, i32 104, i32 54, i32 102, ; 200..207
	i32 32, i32 49, i32 9, i32 95, i32 9, i32 101, i32 82, i32 112, ; 208..215
	i32 29, i32 108, i32 6, i32 1, i32 18, i32 43, i32 84, i32 68, ; 216..223
	i32 79, i32 50, i32 48, i32 97, i32 111, i32 82, i32 92, i32 23, ; 224..231
	i32 114, i32 39, i32 81, i32 63 ; 232..235
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
