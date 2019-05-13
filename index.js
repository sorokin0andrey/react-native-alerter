
import { NativeModules } from 'react-native';

const { RNAlerter } = NativeModules;

export default class Alerter {
  static show({ title = '', message = '', backgroundColor = '', duration = 4000 }) {
    RNAlerter.show({
      title: title.length ? title : message,
      message: title.length ? message : '',
      backgroundColor,
      duration,
    });
  }
};
