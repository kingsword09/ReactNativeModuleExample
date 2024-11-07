# [创建流程](https://jhugman.github.io/uniffi-bindgen-react-native/guides/getting-started.html)

### 1. 初始化一个库

> npx create-react-native-library@latest react-native-uniffi-add

```bash
✔ What type of library do you want to develop? › Turbo module
✔ Which languages do you want to use? › C++ for Android & iOS
✔ What type of example app do you want to create? › Vanilla
```

### 2. 安装依赖

```bash
cd react-native-uniffi-add
yarn
cd example/ios && pod install
cd -
```

##### 启动项目

> yarn example start

### 3. 添加 uniffi-bindgen-react-native

```bash
# 二选一，但是当前只能使用pre-release方式
# 如果 uniffi-bindgen-react-native release之后
yarn add uniffi-bindgen-react-native
# 否则 pre-release
yarn add uniffi-bindgen-react-native@https://github.com/jhugman/uniffi-bindgen-react-native
```

##### 在`package.json`中添加`scripts`

```json
"scripts": {
    "ubrn:ios":      "ubrn build ios     --config ubrn.config.yaml --and-generate && (cd example/ios && pod install)",
    "ubrn:android":  "ubrn build android --config ubrn.config.yaml --and-generate",
    "ubrn:checkout": "ubrn checkout      --config ubrn.config.yaml",
    "ubrn:clean": "rm -Rf cpp/ android/src/main/java ios/ src/Native* src/generated/ src/index.ts*",
}
```

##### 清除不需要的代码
```bash
yarn ubrn:clean
```

##### 到 `example/ios/Podfile` 中添加
```
  # We need to specify this here in the app because we can't add a local dependency within
  # 添加在 use_react_native!() 方法之后
  pod 'uniffi-bindgen-react-native', :path => '../../node_modules/uniffi-bindgen-react-native'
```

### 4. 初始化一个rust项目
```bash
cargo init --lib ./rust
cd rust
cargo add uniffi
```

##### 修改 `.gitignore`
```.gitignore
# 排除rust编译内容提交
target/
*.a
```

##### 修改 `Cargo.toml`
```toml
### 修改为 react native library 名
name = "react-native-uniffi-add"

### 添加静态库编译选项
[lib]
crate-type = ["cdylib", "staticlib", "lib"]
```

##### 修改 `lib.rs`
```rust
// add 方法添加 #[uniffi::export]
#[uniffi::export]
pub fn add(left: u64, right: u64) -> u64 {
    left + right
}

// You must call this once
uniffi::setup_scaffolding!();
```

### 添加 ubrn.config.yaml 文件
```bash
# 项目根目录
touch ubrn.config.yaml
```

##### [配置](https://jhugman.github.io/uniffi-bindgen-react-native/reference/config-yaml.html)
```yaml
---
# 一定要使用 react native library 名
name: ReactNativeUniffiAdd
rust:
  directory: ./rust
  manifest-file: Cargo.toml

android:
  directory: android
  cargoExtras: []
  targets:
  - arm64-v8a
  - armeabi-v7a
  - x86
  - x86_64
  apiLevel: 28
  jniLibs: src/main/jniLibs

ios:
  directory: ios
  cargoExtras: []
  targets:
  - aarch64-apple-ios
  - aarch64-apple-ios-sim
  xcodebuildExtras: []
  frameworkName: UniffiAddFramework

turboModule:
  ts: src
  cpp: cpp
```

### 5. 编译

##### 编译iOS
```bash
yarn ubrn:ios
```
##### 编译Android
```bash
yarn ubrn:android
```

### 6. 启动`example`项目
##### 修改 example/src/App.tsx
```tsx
// 引入 react-native-uniffi-add
import { add } from 'react-native-uniffi-add';
// 修改App.tsx使项目不报错
```

##### 启动项目
```bash
yarn example start

# 按 i 启动 iOS
# 按 a 启动 android
```

### 引用
- [react-native-builder-bob](https://github.com/callstack/react-native-builder-bob)
- [uniffi-bindgen-react-native](https://github.com/jhugman/uniffi-bindgen-react-native)
- [uniffi-rs](https://github.com/mozilla/uniffi-rs)
