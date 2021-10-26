class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS':
        'Ei algo de errado não está certo, pq esse email já está cadastrado!! :P',
    'OPERATION_NOT_ALLOWED': 'Oh nãoooo!!! Essa operação não é permitida /o/',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Baahhh, não é que o acesso foi bloqueado no momento, volte tentar um pouquinho mais tarde ;)',
    'EMAIL_NOT_FOUND': 'Eita me desculpa, mas seu e-mail não foi encontrado.',
    'INVALID_PASSWORD': 'Atenção!!! A senha informada não bate, confere aí..',
    'USER_DISABLED': 'A continha desse usuário foi desabilitada :(',
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Ocorreu um erro no processo de autenticação.';
  }
}
