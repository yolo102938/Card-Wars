; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [234 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 46
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 88
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 7
	i32 57305218, ; 3: Xamarin.KotlinX.Coroutines.Play.Services => 0x36a6882 => 103
	i32 103834273, ; 4: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 66
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 99
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 25
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 23
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 42
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 114
	i32 261689757, ; 10: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 28
	i32 280482487, ; 11: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 41
	i32 293936332, ; 12: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x11851ccc => 89
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 16
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 43
	i32 393699800, ; 16: Firebase => 0x177761d8 => 2
	i32 441335492, ; 17: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 27
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 65
	i32 443493152, ; 19: Xamarin.Google.Android.Recaptcha => 0x1a6f2b20 => 86
	i32 450948140, ; 20: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 40
	i32 465846621, ; 21: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 22: System.dll => 0x1bff388e => 9
	i32 476646585, ; 23: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 41
	i32 485140951, ; 24: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 83
	i32 486930444, ; 25: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 50
	i32 493301629, ; 26: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 67
	i32 495452658, ; 27: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 83
	i32 507148113, ; 28: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 81
	i32 526420162, ; 29: System.Transactions.dll => 0x1f6088c2 => 106
	i32 527452488, ; 30: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 99
	i32 542030372, ; 31: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 93
	i32 589597883, ; 32: Xamarin.GooglePlayServices.Auth.Api.Phone => 0x23248cbb => 89
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 110
	i32 610194910, ; 34: System.Reactive.dll => 0x245ed5de => 13
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 33
	i32 639843206, ; 36: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 39
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 62
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 21
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 115
	i32 691348768, ; 40: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 101
	i32 700284507, ; 41: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 96
	i32 720511267, ; 42: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 100
	i32 763781610, ; 43: Xamarin.Google.Android.Play.Integrity => 0x2d8661ea => 85
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 109
	i32 790371945, ; 45: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 34
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 108
	i32 843511501, ; 47: Xamarin.AndroidX.Print => 0x3246f6cd => 52
	i32 846667644, ; 48: Xamarin.Firebase.Installations.dll => 0x32771f7c => 77
	i32 882434999, ; 49: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 78
	i32 928116545, ; 50: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 88
	i32 955402788, ; 51: Newtonsoft.Json => 0x38f24a24 => 7
	i32 956575887, ; 52: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 100
	i32 967690846, ; 53: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 43
	i32 996733531, ; 54: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 82
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 56
	i32 1031528504, ; 56: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 87
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 20
	i32 1036359102, ; 58: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 92
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 47
	i32 1084122840, ; 60: Xamarin.Kotlin.StdLib => 0x409e66d8 => 98
	i32 1098259244, ; 61: System => 0x41761b2c => 9
	i32 1110581358, ; 62: Xamarin.Firebase.Auth => 0x4232206e => 68
	i32 1141947663, ; 63: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 79
	i32 1175144683, ; 64: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 60
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 21
	i32 1264511973, ; 66: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 57
	i32 1267360935, ; 67: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 61
	i32 1275534314, ; 68: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 101
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 36
	i32 1333047053, ; 70: Xamarin.Firebase.Common => 0x4f74af0d => 70
	i32 1365406463, ; 71: System.ServiceModel.Internals.dll => 0x516272ff => 113
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 56
	i32 1379897097, ; 73: Xamarin.JavaX.Inject => 0x523f8f09 => 95
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 29
	i32 1411702249, ; 75: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 69
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 19
	i32 1531040989, ; 78: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 76
	i32 1582372066, ; 79: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 35
	i32 1592978981, ; 80: System.Runtime.Serialization.dll => 0x5ef2ee25 => 112
	i32 1597949149, ; 81: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 87
	i32 1622152042, ; 82: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 49
	i32 1624863272, ; 83: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 64
	i32 1635184631, ; 84: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 39
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 32
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 87: System.Runtime => 0x62c6282e => 14
	i32 1658241508, ; 88: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 58
	i32 1658251792, ; 89: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 84
	i32 1670060433, ; 90: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 28
	i32 1698840827, ; 91: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 97
	i32 1729485958, ; 92: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 24
	i32 1776026572, ; 93: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 94: Xamarin.AndroidX.Fragment => 0x6a96652d => 40
	i32 1808609942, ; 95: Xamarin.AndroidX.Loader => 0x6bcd3296 => 49
	i32 1813058853, ; 96: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 98
	i32 1813201214, ; 97: Xamarin.Google.Android.Material => 0x6c13413e => 84
	i32 1867746548, ; 98: Xamarin.Essentials.dll => 0x6f538cf4 => 65
	i32 1875053220, ; 99: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 69
	i32 1876173635, ; 100: Xamarin.Firebase.Encoders.Proto => 0x6fd42343 => 75
	i32 1885316902, ; 101: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 22
	i32 1904755420, ; 102: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 1
	i32 1908813208, ; 103: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 91
	i32 1919157823, ; 104: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 51
	i32 1933215285, ; 105: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 80
	i32 1983156543, ; 106: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 97
	i32 2019465201, ; 107: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 47
	i32 2055257422, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 44
	i32 2079903147, ; 109: System.Runtime.dll => 0x7bf8cdab => 14
	i32 2086218969, ; 110: Xamarin.Google.Android.Play.Integrity.dll => 0x7c592cd9 => 85
	i32 2090596640, ; 111: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2124230737, ; 112: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 82
	i32 2129483829, ; 113: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 90
	i32 2174878672, ; 114: Xamarin.Firebase.Annotations => 0x81a203d0 => 66
	i32 2201107256, ; 115: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 102
	i32 2201231467, ; 116: System.Net.Http => 0x8334206b => 10
	i32 2205047605, ; 117: CardWars => 0x836e5b35 => 0
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 60
	i32 2244775296, ; 119: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 50
	i32 2256548716, ; 120: Xamarin.AndroidX.MultiDex => 0x8680336c => 51
	i32 2279755925, ; 121: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 54
	i32 2315684594, ; 122: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 17
	i32 2382033717, ; 123: Xamarin.Firebase.Auth.dll => 0x8dfaf335 => 68
	i32 2403452196, ; 124: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 38
	i32 2465532216, ; 125: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 27
	i32 2471841756, ; 126: netstandard.dll => 0x93554fdc => 104
	i32 2475788418, ; 127: Java.Interop.dll => 0x93918882 => 3
	i32 2483661569, ; 128: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 79
	i32 2483742551, ; 129: Xamarin.Firebase.Messaging => 0x940ae757 => 80
	i32 2486410006, ; 130: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 92
	i32 2501346920, ; 131: System.Data.DataSetExtensions => 0x95178668 => 107
	i32 2505896520, ; 132: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 46
	i32 2561374756, ; 133: Xamarin.Google.Android.Recaptcha.dll => 0x98ab7a24 => 86
	i32 2581819634, ; 134: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 61
	i32 2605712449, ; 135: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 102
	i32 2620111890, ; 136: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 73
	i32 2620871830, ; 137: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 32
	i32 2623491480, ; 138: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 78
	i32 2624644809, ; 139: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 37
	i32 2639764100, ; 140: Xamarin.Firebase.Encoders => 0x9d579a84 => 73
	i32 2701096212, ; 141: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 58
	i32 2732626843, ; 142: Xamarin.AndroidX.Activity => 0xa2e0939b => 16
	i32 2737747696, ; 143: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 19
	i32 2770495804, ; 144: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 96
	i32 2778768386, ; 145: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 63
	i32 2779977773, ; 146: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 55
	i32 2804607052, ; 147: Xamarin.Firebase.Components.dll => 0xa72ae84c => 71
	i32 2810250172, ; 148: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 29
	i32 2819470561, ; 149: System.Xml.dll => 0xa80db4e1 => 15
	i32 2821294376, ; 150: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 55
	i32 2847418871, ; 151: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 90
	i32 2853208004, ; 152: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 63
	i32 2855708567, ; 153: Xamarin.AndroidX.Transition => 0xaa36a797 => 59
	i32 2870458124, ; 154: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 67
	i32 2883826422, ; 155: Xamarin.Firebase.Installations => 0xabe3b2f6 => 77
	i32 2903344695, ; 156: System.ComponentModel.Composition => 0xad0d8637 => 111
	i32 2905242038, ; 157: mscorlib.dll => 0xad2a79b6 => 6
	i32 2914202368, ; 158: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 76
	i32 2916838712, ; 159: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 64
	i32 2919462931, ; 160: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 161: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 18
	i32 2978675010, ; 162: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 36
	i32 2996846495, ; 163: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 45
	i32 3016983068, ; 164: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 57
	i32 3024354802, ; 165: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 42
	i32 3058099980, ; 166: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 94
	i32 3071899978, ; 167: Xamarin.Firebase.Common.dll => 0xb719794a => 70
	i32 3106737866, ; 168: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 72
	i32 3111772706, ; 169: System.Runtime.Serialization => 0xb979e222 => 112
	i32 3150271759, ; 170: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0xbbc5550f => 103
	i32 3155362983, ; 171: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 81
	i32 3204380047, ; 172: System.Data.dll => 0xbefef58f => 105
	i32 3211777861, ; 173: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 35
	i32 3230466174, ; 174: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 91
	i32 3247949154, ; 175: Mono.Security => 0xc197c562 => 116
	i32 3258312781, ; 176: Xamarin.AndroidX.CardView => 0xc235e84d => 24
	i32 3317135071, ; 177: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 33
	i32 3317144872, ; 178: System.Data => 0xc5b79d28 => 105
	i32 3322403133, ; 179: Firebase.dll => 0xc607d93d => 2
	i32 3326804502, ; 180: CardWars.dll => 0xc64b0216 => 0
	i32 3331531814, ; 181: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 93
	i32 3340431453, ; 182: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 22
	i32 3345895724, ; 183: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 53
	i32 3362522851, ; 184: Xamarin.AndroidX.Core => 0xc86c06e3 => 31
	i32 3366347497, ; 185: Java.Interop => 0xc8a662e9 => 3
	i32 3371992681, ; 186: Xamarin.Firebase.Encoders.Proto.dll => 0xc8fc8669 => 75
	i32 3374999561, ; 187: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 54
	i32 3383578424, ; 188: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 74
	i32 3404865022, ; 189: System.ServiceModel.Internals => 0xcaf21dfe => 113
	i32 3405233483, ; 190: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 34
	i32 3429136800, ; 191: System.Xml => 0xcc6479a0 => 15
	i32 3430777524, ; 192: netstandard => 0xcc7d82b4 => 104
	i32 3441283291, ; 193: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 37
	i32 3476120550, ; 194: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 195: System.Transactions => 0xcfd0c798 => 106
	i32 3493954962, ; 196: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 26
	i32 3509114376, ; 197: System.Xml.Linq => 0xd128d608 => 115
	i32 3567349600, ; 198: System.ComponentModel.Composition.dll => 0xd4a16f60 => 111
	i32 3596207933, ; 199: LiteDB.dll => 0xd659c73d => 4
	i32 3627220390, ; 200: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 52
	i32 3629588173, ; 201: LiteDB => 0xd8571ecd => 4
	i32 3633644679, ; 202: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 18
	i32 3641597786, ; 203: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 44
	i32 3672681054, ; 204: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 205: System.Web.Services.dll => 0xdb2009fe => 114
	i32 3682565725, ; 206: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 23
	i32 3684561358, ; 207: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 26
	i32 3684933406, ; 208: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 1
	i32 3689375977, ; 209: System.Drawing.Common => 0xdbe768e9 => 108
	i32 3706696989, ; 210: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 30
	i32 3718780102, ; 211: Xamarin.AndroidX.Annotation => 0xdda814c6 => 17
	i32 3731644420, ; 212: System.Reactive => 0xde6c6004 => 13
	i32 3786282454, ; 213: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 25
	i32 3829621856, ; 214: System.Numerics.dll => 0xe4436460 => 11
	i32 3885922214, ; 215: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 59
	i32 3888767677, ; 216: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 53
	i32 3896760992, ; 217: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 31
	i32 3920810846, ; 218: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 110
	i32 3921031405, ; 219: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 62
	i32 3934056515, ; 220: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 95
	i32 3945713374, ; 221: System.Data.DataSetExtensions.dll => 0xeb2ecede => 107
	i32 3955647286, ; 222: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 20
	i32 3959773229, ; 223: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 45
	i32 3970018735, ; 224: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 94
	i32 4101593132, ; 225: Xamarin.AndroidX.Emoji2 => 0xf479582c => 38
	i32 4105002889, ; 226: Mono.Security.dll => 0xf4ad5f89 => 116
	i32 4151237749, ; 227: System.Core => 0xf76edc75 => 8
	i32 4182413190, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 48
	i32 4192648326, ; 229: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 74
	i32 4256097574, ; 230: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 30
	i32 4269159614, ; 231: Xamarin.Firebase.Datatransport => 0xfe7634be => 72
	i32 4284549794, ; 232: Xamarin.Firebase.Components => 0xff610aa2 => 71
	i32 4292120959 ; 233: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 48
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [234 x i32] [
	i32 46, i32 88, i32 7, i32 103, i32 66, i32 99, i32 25, i32 23, ; 0..7
	i32 42, i32 114, i32 28, i32 41, i32 89, i32 16, i32 11, i32 43, ; 8..15
	i32 2, i32 27, i32 65, i32 86, i32 40, i32 6, i32 9, i32 41, ; 16..23
	i32 83, i32 50, i32 67, i32 83, i32 81, i32 106, i32 99, i32 93, ; 24..31
	i32 89, i32 110, i32 13, i32 33, i32 39, i32 62, i32 21, i32 115, ; 32..39
	i32 101, i32 96, i32 100, i32 85, i32 109, i32 34, i32 108, i32 52, ; 40..47
	i32 77, i32 78, i32 88, i32 7, i32 100, i32 43, i32 82, i32 56, ; 48..55
	i32 87, i32 20, i32 92, i32 47, i32 98, i32 9, i32 68, i32 79, ; 56..63
	i32 60, i32 21, i32 57, i32 61, i32 101, i32 36, i32 70, i32 113, ; 64..71
	i32 56, i32 95, i32 29, i32 69, i32 109, i32 19, i32 76, i32 35, ; 72..79
	i32 112, i32 87, i32 49, i32 64, i32 39, i32 32, i32 10, i32 14, ; 80..87
	i32 58, i32 84, i32 28, i32 97, i32 24, i32 8, i32 40, i32 49, ; 88..95
	i32 98, i32 84, i32 65, i32 69, i32 75, i32 22, i32 1, i32 91, ; 96..103
	i32 51, i32 80, i32 97, i32 47, i32 44, i32 14, i32 85, i32 12, ; 104..111
	i32 82, i32 90, i32 66, i32 102, i32 10, i32 0, i32 60, i32 50, ; 112..119
	i32 51, i32 54, i32 17, i32 68, i32 38, i32 27, i32 104, i32 3, ; 120..127
	i32 79, i32 80, i32 92, i32 107, i32 46, i32 86, i32 61, i32 102, ; 128..135
	i32 73, i32 32, i32 78, i32 37, i32 73, i32 58, i32 16, i32 19, ; 136..143
	i32 96, i32 63, i32 55, i32 71, i32 29, i32 15, i32 55, i32 90, ; 144..151
	i32 63, i32 59, i32 67, i32 77, i32 111, i32 6, i32 76, i32 64, ; 152..159
	i32 12, i32 18, i32 36, i32 45, i32 57, i32 42, i32 94, i32 70, ; 160..167
	i32 72, i32 112, i32 103, i32 81, i32 105, i32 35, i32 91, i32 116, ; 168..175
	i32 24, i32 33, i32 105, i32 2, i32 0, i32 93, i32 22, i32 53, ; 176..183
	i32 31, i32 3, i32 75, i32 54, i32 74, i32 113, i32 34, i32 15, ; 184..191
	i32 104, i32 37, i32 5, i32 106, i32 26, i32 115, i32 111, i32 4, ; 192..199
	i32 52, i32 4, i32 18, i32 44, i32 5, i32 114, i32 23, i32 26, ; 200..207
	i32 1, i32 108, i32 30, i32 17, i32 13, i32 25, i32 11, i32 59, ; 208..215
	i32 53, i32 31, i32 110, i32 62, i32 95, i32 107, i32 20, i32 45, ; 216..223
	i32 94, i32 38, i32 116, i32 8, i32 48, i32 74, i32 30, i32 72, ; 224..231
	i32 71, i32 48 ; 232..233
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
