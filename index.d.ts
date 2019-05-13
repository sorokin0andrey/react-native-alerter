interface AlerterProps {
  title?: string
  message?: string
  backgroundColor?: string
  duration?: number
}

export default class Alerter {
  static show(props: AlerterProps): void;
}