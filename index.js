
import { NativeModules, Platform, processColor } from 'react-native';

const { RNAlerter } = NativeModules;

export default class Alerter {
  static show({ title = '', message = '', backgroundColor = '#424543', duration = 4000 }) {
    RNAlerter.show({
      backgroundColor: processColor(backgroundColor),
      duration,
      ...Platform.select({
        ios: {
          title: title || undefined,
          message: message || undefined,
        },
        android: {
          title,
          message,
        },
      })
    });
  }
};
