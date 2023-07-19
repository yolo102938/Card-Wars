; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [236 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 47
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 89
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 7
	i32 57305218, ; 3: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 104
	i32 103834273, ; 4: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 67
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 100
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 26
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 24
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 43
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 115
	i32 261689757, ; 10: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 29
	i32 280482487, ; 11: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 42
	i32 293936332, ; 12: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 90
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 16
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 44
	i32 393699800, ; 16: Firebase => 0x177761d8 => 2
	i32 441335492, ; 17: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 28
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 66
	i32 443493152, ; 19: Xamarin.Google.Android.Recaptcha => 0x1a6f2b20 => 87
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 41
	i32 465846621, ; 21: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 22: System.dll => 0x1bff388e => 9
	i32 476646585, ; 23: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 42
	i32 485140951, ; 24: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 84
	i32 486930444, ; 25: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 51
	i32 493301629, ; 26: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 68
	i32 495452658, ; 27: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 84
	i32 507148113, ; 28: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 82
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 107
	i32 527452488, ; 30: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 100
	i32 542030372, ; 31: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 94
	i32 589597883, ; 32: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 90
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 111
	i32 610194910, ; 34: System.Reactive.dll => 0x245ed5de => 13
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 34
	i32 639843206, ; 36: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 40
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 63
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 22
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 116
	i32 691348768, ; 40: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 102
	i32 700284507, ; 41: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 97
	i32 720511267, ; 42: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 101
	i32 763781610, ; 43: Xamarin.Google.Android.Play.Integrity => 0x2d8661ea => 86
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 110
	i32 790371945, ; 45: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 35
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 109
	i32 843511501, ; 47: Xamarin.AndroidX.Print => 0x3246f6cd => 53
	i32 846667644, ; 48: Xamarin.Firebase.Installations.dll => 0x32771f7c => 78
	i32 882434999, ; 49: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 79
	i32 928116545, ; 50: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 89
	i32 955402788, ; 51: Newtonsoft.Json => 0x38f24a24 => 7
	i32 956575887, ; 52: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 101
	i32 967690846, ; 53: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 44
	i32 996733531, ; 54: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 83
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 57
	i32 1031528504, ; 56: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 88
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 21
	i32 1036359102, ; 58: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 93
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 48
	i32 1084122840, ; 60: Xamarin.Kotlin.StdLib => 0x409e66d8 => 99
	i32 1098259244, ; 61: System => 0x41761b2c => 9
	i32 1110581358, ; 62: Xamarin.Firebase.Auth => 0x4232206e => 69
	i32 1141947663, ; 63: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 80
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 61
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 22
	i32 1264511973, ; 66: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 58
	i32 1267360935, ; 67: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 62
	i32 1275534314, ; 68: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 102
	i32 1278448581, ; 69: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 19
	i32 1293217323, ; 70: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 37
	i32 1333047053, ; 71: Xamarin.Firebase.Common => 0x4f74af0d => 71
	i32 1365406463, ; 72: System.ServiceModel.Internals.dll => 0x516272ff => 114
	i32 1376866003, ; 73: Xamarin.AndroidX.SavedState => 0x52114ed3 => 57
	i32 1379897097, ; 74: Xamarin.JavaX.Inject => 0x523f8f09 => 96
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 30
	i32 1411702249, ; 76: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 70
	i32 1462112819, ; 77: System.IO.Compression.dll => 0x57261233 => 110
	i32 1469204771, ; 78: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 20
	i32 1531040989, ; 79: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 77
	i32 1582372066, ; 80: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 36
	i32 1592978981, ; 81: System.Runtime.Serialization.dll => 0x5ef2ee25 => 113
	i32 1597949149, ; 82: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 88
	i32 1622152042, ; 83: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 50
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 65
	i32 1635184631, ; 85: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 40
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 33
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 88: System.Runtime => 0x62c6282e => 14
	i32 1658241508, ; 89: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 59
	i32 1658251792, ; 90: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 85
	i32 1670060433, ; 91: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 29
	i32 1698840827, ; 92: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 98
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 25
	i32 1776026572, ; 94: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 95: Xamarin.AndroidX.Fragment => 0x6a96652d => 41
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 50
	i32 1813058853, ; 97: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 99
	i32 1813201214, ; 98: Xamarin.Google.Android.Material => 0x6c13413e => 85
	i32 1867746548, ; 99: Xamarin.Essentials.dll => 0x6f538cf4 => 66
	i32 1875053220, ; 100: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 70
	i32 1876173635, ; 101: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 76
	i32 1885316902, ; 102: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 23
	i32 1904755420, ; 103: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1908813208, ; 104: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 92
	i32 1919157823, ; 105: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 52
	i32 1933215285, ; 106: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 81
	i32 1983156543, ; 107: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 98
	i32 2019465201, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 48
	i32 2055257422, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 45
	i32 2079903147, ; 110: System.Runtime.dll => 0x7bf8cdab => 14
	i32 2086218969, ; 111: Xamarin.Google.Android.Play.Integrity.dll => 0x7c592cd9 => 86
	i32 2090596640, ; 112: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2124230737, ; 113: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 83
	i32 2129483829, ; 114: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 91
	i32 2174878672, ; 115: Xamarin.Firebase.Annotations => 0x81a203d0 => 67
	i32 2201107256, ; 116: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 103
	i32 2201231467, ; 117: System.Net.Http => 0x8334206b => 10
	i32 2205047605, ; 118: CardWars => 0x836e5b35 => 0
	i32 2217644978, ; 119: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 61
	i32 2244775296, ; 120: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 51
	i32 2256548716, ; 121: Xamarin.AndroidX.MultiDex => 0x8680336c => 52
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 55
	i32 2315684594, ; 123: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 17
	i32 2382033717, ; 124: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 69
	i32 2403452196, ; 125: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 39
	i32 2465532216, ; 126: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 28
	i32 2471841756, ; 127: netstandard.dll => 0x93554fdc => 105
	i32 2475788418, ; 128: Java.Interop.dll => 0x93918882 => 3
	i32 2483661569, ; 129: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 80
	i32 2483742551, ; 130: Xamarin.Firebase.Messaging => 0x940ae757 => 81
	i32 2486410006, ; 131: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 93
	i32 2501346920, ; 132: System.Data.DataSetExtensions => 0x95178668 => 108
	i32 2505896520, ; 133: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 47
	i32 2561374756, ; 134: Xamarin.Google.Android.Recaptcha.dll => 0x98ab7a24 => 87
	i32 2581819634, ; 135: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 62
	i32 2605712449, ; 136: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 103
	i32 2620111890, ; 137: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 74
	i32 2620871830, ; 138: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 33
	i32 2623491480, ; 139: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 79
	i32 2624644809, ; 140: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 38
	i32 2639764100, ; 141: Xamarin.Firebase.Encoders => 0x9d579a84 => 74
	i32 2701096212, ; 142: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 59
	i32 2732626843, ; 143: Xamarin.AndroidX.Activity => 0xa2e0939b => 16
	i32 2737747696, ; 144: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 20
	i32 2770495804, ; 145: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 97
	i32 2778768386, ; 146: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 64
	i32 2779977773, ; 147: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 56
	i32 2804607052, ; 148: Xamarin.Firebase.Components.dll => 0xa72ae84c => 72
	i32 2810250172, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 30
	i32 2819470561, ; 150: System.Xml.dll => 0xa80db4e1 => 15
	i32 2821294376, ; 151: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 56
	i32 2847418871, ; 152: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 91
	i32 2853208004, ; 153: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 64
	i32 2855708567, ; 154: Xamarin.AndroidX.Transition => 0xaa36a797 => 60
	i32 2870458124, ; 155: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 68
	i32 2883826422, ; 156: Xamarin.Firebase.Installations => 0xabe3b2f6 => 78
	i32 2903344695, ; 157: System.ComponentModel.Composition => 0xad0d8637 => 112
	i32 2905242038, ; 158: mscorlib.dll => 0xad2a79b6 => 6
	i32 2914202368, ; 159: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 77
	i32 2916838712, ; 160: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 65
	i32 2919462931, ; 161: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 162: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 18
	i32 2978675010, ; 163: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 37
	i32 2996846495, ; 164: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 46
	i32 3016983068, ; 165: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 58
	i32 3024354802, ; 166: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 43
	i32 3058099980, ; 167: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 95
	i32 3071899978, ; 168: Xamarin.Firebase.Common.dll => 0xb719794a => 71
	i32 3106737866, ; 169: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 73
	i32 3111772706, ; 170: System.Runtime.Serialization => 0xb979e222 => 113
	i32 3150271759, ; 171: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 104
	i32 3155362983, ; 172: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 82
	i32 3204380047, ; 173: System.Data.dll => 0xbefef58f => 106
	i32 3211777861, ; 174: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 36
	i32 3230466174, ; 175: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 92
	i32 3247949154, ; 176: Mono.Security => 0xc197c562 => 117
	i32 3258312781, ; 177: Xamarin.AndroidX.CardView => 0xc235e84d => 25
	i32 3317135071, ; 178: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 34
	i32 3317144872, ; 179: System.Data => 0xc5b79d28 => 106
	i32 3322403133, ; 180: Firebase.dll => 0xc607d93d => 2
	i32 3326804502, ; 181: CardWars.dll => 0xc64b0216 => 0
	i32 3331531814, ; 182: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 94
	i32 3340431453, ; 183: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 23
	i32 3345895724, ; 184: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 54
	i32 3362522851, ; 185: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 186: Java.Interop => 0xc8a662e9 => 3
	i32 3371992681, ; 187: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 76
	i32 3374999561, ; 188: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 55
	i32 3383578424, ; 189: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 75
	i32 3404865022, ; 190: System.ServiceModel.Internals => 0xcaf21dfe => 114
	i32 3405233483, ; 191: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 35
	i32 3429136800, ; 192: System.Xml => 0xcc6479a0 => 15
	i32 3430777524, ; 193: netstandard => 0xcc7d82b4 => 105
	i32 3441283291, ; 194: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 38
	i32 3476120550, ; 195: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 196: System.Transactions => 0xcfd0c798 => 107
	i32 3493954962, ; 197: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 27
	i32 3509114376, ; 198: System.Xml.Linq => 0xd128d608 => 116
	i32 3567349600, ; 199: System.ComponentModel.Composition.dll => 0xd4a16f60 => 112
	i32 3596207933, ; 200: LiteDB.dll => 0xd659c73d => 4
	i32 3627220390, ; 201: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 53
	i32 3629588173, ; 202: LiteDB => 0xd8571ecd => 4
	i32 3633644679, ; 203: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 18
	i32 3641597786, ; 204: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 45
	i32 3672681054, ; 205: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 206: System.Web.Services.dll => 0xdb2009fe => 115
	i32 3682565725, ; 207: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 24
	i32 3684561358, ; 208: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 27
	i32 3684933406, ; 209: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3689375977, ; 210: System.Drawing.Common => 0xdbe768e9 => 109
	i32 3706696989, ; 211: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 31
	i32 3718780102, ; 212: Xamarin.AndroidX.Annotation => 0xdda814c6 => 17
	i32 3731644420, ; 213: System.Reactive => 0xde6c6004 => 13
	i32 3786282454, ; 214: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 26
	i32 3829621856, ; 215: System.Numerics.dll => 0xe4436460 => 11
	i32 3885922214, ; 216: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 60
	i32 3888767677, ; 217: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 54
	i32 3896760992, ; 218: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3920810846, ; 219: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 111
	i32 3921031405, ; 220: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 63
	i32 3934056515, ; 221: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 96
	i32 3945713374, ; 222: System.Data.DataSetExtensions.dll => 0xeb2ecede => 108
	i32 3955647286, ; 223: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 21
	i32 3959773229, ; 224: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 46
	i32 3970018735, ; 225: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 95
	i32 4015948917, ; 226: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 19
	i32 4101593132, ; 227: Xamarin.AndroidX.Emoji2 => 0xf479582c => 39
	i32 4105002889, ; 228: Mono.Security.dll => 0xf4ad5f89 => 117
	i32 4151237749, ; 229: System.Core => 0xf76edc75 => 8
	i32 4182413190, ; 230: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 49
	i32 4192648326, ; 231: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 75
	i32 4256097574, ; 232: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 31
	i32 4269159614, ; 233: Xamarin.Firebase.Datatransport => 0xfe7634be => 73
	i32 4284549794, ; 234: Xamarin.Firebase.Components => 0xff610aa2 => 72
	i32 4292120959 ; 235: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 49
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [236 x i32] [
	i32 47, i32 89, i32 7, i32 104, i32 67, i32 100, i32 26, i32 24, ; 0..7
	i32 43, i32 115, i32 29, i32 42, i32 90, i32 16, i32 11, i32 44, ; 8..15
	i32 2, i32 28, i32 66, i32 87, i32 41, i32 6, i32 9, i32 42, ; 16..23
	i32 84, i32 51, i32 68, i32 84, i32 82, i32 107, i32 100, i32 94, ; 24..31
	i32 90, i32 111, i32 13, i32 34, i32 40, i32 63, i32 22, i32 116, ; 32..39
	i32 102, i32 97, i32 101, i32 86, i32 110, i32 35, i32 109, i32 53, ; 40..47
	i32 78, i32 79, i32 89, i32 7, i32 101, i32 44, i32 83, i32 57, ; 48..55
	i32 88, i32 21, i32 93, i32 48, i32 99, i32 9, i32 69, i32 80, ; 56..63
	i32 61, i32 22, i32 58, i32 62, i32 102, i32 19, i32 37, i32 71, ; 64..71
	i32 114, i32 57, i32 96, i32 30, i32 70, i32 110, i32 20, i32 77, ; 72..79
	i32 36, i32 113, i32 88, i32 50, i32 65, i32 40, i32 33, i32 10, ; 80..87
	i32 14, i32 59, i32 85, i32 29, i32 98, i32 25, i32 8, i32 41, ; 88..95
	i32 50, i32 99, i32 85, i32 66, i32 70, i32 76, i32 23, i32 1, ; 96..103
	i32 92, i32 52, i32 81, i32 98, i32 48, i32 45, i32 14, i32 86, ; 104..111
	i32 12, i32 83, i32 91, i32 67, i32 103, i32 10, i32 0, i32 61, ; 112..119
	i32 51, i32 52, i32 55, i32 17, i32 69, i32 39, i32 28, i32 105, ; 120..127
	i32 3, i32 80, i32 81, i32 93, i32 108, i32 47, i32 87, i32 62, ; 128..135
	i32 103, i32 74, i32 33, i32 79, i32 38, i32 74, i32 59, i32 16, ; 136..143
	i32 20, i32 97, i32 64, i32 56, i32 72, i32 30, i32 15, i32 56, ; 144..151
	i32 91, i32 64, i32 60, i32 68, i32 78, i32 112, i32 6, i32 77, ; 152..159
	i32 65, i32 12, i32 18, i32 37, i32 46, i32 58, i32 43, i32 95, ; 160..167
	i32 71, i32 73, i32 113, i32 104, i32 82, i32 106, i32 36, i32 92, ; 168..175
	i32 117, i32 25, i32 34, i32 106, i32 2, i32 0, i32 94, i32 23, ; 176..183
	i32 54, i32 32, i32 3, i32 76, i32 55, i32 75, i32 114, i32 35, ; 184..191
	i32 15, i32 105, i32 38, i32 5, i32 107, i32 27, i32 116, i32 112, ; 192..199
	i32 4, i32 53, i32 4, i32 18, i32 45, i32 5, i32 115, i32 24, ; 200..207
	i32 27, i32 1, i32 109, i32 31, i32 17, i32 13, i32 26, i32 11, ; 208..215
	i32 60, i32 54, i32 32, i32 111, i32 63, i32 96, i32 108, i32 21, ; 216..223
	i32 46, i32 95, i32 19, i32 39, i32 117, i32 8, i32 49, i32 75, ; 224..231
	i32 31, i32 73, i32 72, i32 49 ; 232..235
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
