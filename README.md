# KNPodlibDemo

>* pod install
```
devzkndeMacBook-Pro:KNPodlibDemo devzkn$ pod install
Analyzing dependencies
Downloading dependencies
Installing KNPodlib (0.1.3)
Generating Pods project
Integrating client project
[!] Please close any current Xcode sessions and use `KNPodlibDemo.xcworkspace` for this project from now on.
Sending stats
Pod installation complete! There is 1 dependency from the Podfile and 1 total pod installed.
[!] Automatically assigning platform `ios` with version `11.1` on target `KNPodlibDemo` because no platform was specified. Please specify a platform for this target in your Podfile. See `https://guides.cocoapods.org/syntax/podfile.html#platform`.
```


>* pod update

```
devzkndeMacBook-Pro:KNPodlibDemo devzkn$ pod update
Update all pods
Updating local specs repositories
  $ /usr/bin/git -C /Users/devzkn/.cocoapods/repos/master fetch origin --progress
1) podinstall只会按照Podfile的要求来请求类库，如果类库版本号有变化，那么将获取失败。
2) 但是 pod update会更新所有的类库，获取最新版本的类库。
```

>* info.plist 添加 NSPhotoLibraryUsageDescription key

```
NSPhotoLibraryUsageDescription
```