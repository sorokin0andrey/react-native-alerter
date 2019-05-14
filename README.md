
# react-native-alerter

## Getting started

`$ yarn add react-native-alerter`

### Manual installation


#### iOS With [CocoaPods](https://cocoapods.org/)

Add the following to your `Podfile` and run `pod update`:

```
pod 'RNAlerter', :path => '../node_modules/react-native-alerter'
```

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.sorokin0andrey.RNAlerterPackage;` to the imports at the top of the file
  - Add `new RNAlerterPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-alerter'
  	project(':react-native-alerter').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-alerter/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-alerter')
  	```


## Usage
```javascript
import Alerter from 'react-native-alerter';

Alerter.show({ title: 'Hello word!', 'Message...', backgroundColor: '#424543', duration: 4000 });
```
  