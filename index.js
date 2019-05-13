
import { NativeModules, Platform } from 'react-native';

const { RNAlerter } = NativeModules;

export default class Alerter {
  static show({ title = '', message = '', backgroundColor = '', duration = 4000 }) {
    RNAlerter.show({
      backgroundColor,
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
