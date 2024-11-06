import { StyleSheet, View, Text } from 'react-native';
import { add } from 'react-native-uniffi-add';

const result = add(BigInt(3), BigInt(7));

export default function App() {
  return (
    <View style={styles.container}>
      <Text>Result: {result.toString()}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
