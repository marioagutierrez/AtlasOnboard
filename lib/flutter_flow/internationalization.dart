import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? ptText = '',
  }) =>
      [enText, esText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // logInPage
  {
    'abqn39l5': {
      'en': 'Enter your information to login',
      'es': 'Ingrese su información para iniciar sesión',
      'pt': 'Digite suas informações para entrar',
    },
    'nbyq2zg8': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    '5lnybe5x': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'ioisbut1': {
      'en': 'Login',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'vuk0anfl': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
      'pt': 'Esqueceu sua senha?',
    },
    'wgch5y9m': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    'spr98osj': {
      'en': 'Or use a social account to login',
      'es': 'O use una cuenta social para iniciar sesión',
      'pt': 'Ou use uma conta social para fazer login',
    },
  },
  // forgotPassword
  {
    '8f4cp5du': {
      'en': 'Back',
      'es': 'Atrás',
      'pt': 'Voltar',
    },
    'jxqu7oar': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'pt': 'Esqueceu sua senha',
    },
    '12la333b': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
      'pt':
          'Enviaremos um e-mail com um link para redefinir sua senha, digite o e-mail associado à sua conta abaixo.',
    },
    'g7813a3k': {
      'en': 'Your email address...',
      'es': 'Su dirección de correo electrónico...',
      'pt': 'Seu endereço de email...',
    },
    'p8nbplm9': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'pt': 'Digite seu e-mail...',
    },
    'wxohl0iz': {
      'en': 'Send Link',
      'es': 'Enviar enlace',
      'pt': 'Enviar Link',
    },
    'ar7qy1k7': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // SignUp
  {
    'atb2fwch': {
      'en': 'Create your Account',
      'es': 'Crea tu cuenta',
      'pt': 'Crie sua conta',
    },
    'ph6zixs5': {
      'en': 'CORP',
      'es': 'CORP',
      'pt': 'CORP',
    },
    'h39zqi4x': {
      'en': 'AB - ',
      'es': '',
      'pt': '',
    },
    'izvuqha4': {
      'en': 'Referral Code',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'hhqs3kqi': {
      'en': 'Legal Name',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    '9ibuff6t': {
      'en': 'Commercial Name',
      'es': 'Nombre comercial',
      'pt': 'Nome comercial',
    },
    'l80av0py': {
      'en': 'Incorporation Number',
      'es': 'Número de incorporación',
      'pt': 'Número de Incorporação',
    },
    'cvmnfkp0': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'r43li75g': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'p42e4gp6': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '6die8qsu': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'b0qcuz4q': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'wzcr6xtn': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'aspe948z': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'mrno4tlk': {
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
      'pt': 'Confirme sua senha',
    },
    'hv7mmray': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    'cn5k524h': {
      'en': 'I already have an account ',
      'es': 'ya tengo una cuenta',
      'pt': 'eu já tenho uma conta',
    },
    'c8bskt1f': {
      'en': 'LogIn',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    '37uhhlam': {
      'en': 'PERSONAL',
      'es': 'PERSONAL',
      'pt': 'PESSOAL',
    },
    '49d9cied': {
      'en': 'AB - ',
      'es': '',
      'pt': '',
    },
    '73dhmz6k': {
      'en': 'Referral Code',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'ip2gu7xu': {
      'en': 'First name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'mpjk8br9': {
      'en': 'First name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'w1lnbqvp': {
      'en': 'Last name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    's4dp58or': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    '0wkf0rcw': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'c76uphl1': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'jb0cv7fz': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'coxe2jyz': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'deaezctg': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    '9qeiexqa': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'i3ifz9up': {
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
      'pt': 'Confirme sua senha',
    },
    'fder2czc': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    't1n40zf2': {
      'en': 'I already have an account ',
      'es': 'ya tengo una cuenta',
      'pt': 'eu já tenho uma conta',
    },
    'dikq10x0': {
      'en': 'LogIn',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'xufbd54e': {
      'en': 'REFERRAL',
      'es': 'AFILIADO\nREFERENCIAS',
      'pt': 'AFILIADO\nREFERÊNCIAS',
    },
    'bwqdjj9v': {
      'en': 'Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'recru65o': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    '7hdyoslo': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'ucy6lcbw': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'mpyjnpuf': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    '546dyval': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'u65r8dk3': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'gcmt42a0': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'fbvrngmr': {
      'en': 'Confirm password',
      'es': 'Confirmar Contraseña',
      'pt': 'Confirme sua senha',
    },
    'hqmdfp8r': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
      'pt': 'Criar uma conta',
    },
    'a48zlz5i': {
      'en': 'I already have an account ',
      'es': 'ya tengo una cuenta',
      'pt': 'eu já tenho uma conta',
    },
    'c6f8f46q': {
      'en': 'LogIn',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    '8dggbcjy': {
      'en': 'ADMIN',
      'es': '',
      'pt': '',
    },
    'pol7ok9n': {
      'en': 'For Authorized Administrators',
      'es': 'Para administradores autorizados',
      'pt': 'Para administradores autorizados',
    },
    '2v2vkmbs': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '5zjtff7o': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    '9h5x0rw1': {
      'en': 'Password',
      'es': 'Contraseña',
      'pt': 'Senha',
    },
    'irgg5tal': {
      'en': 'Login',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'kct563c4': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
  },
  // phoneVerification
  {
    'dvrkevsn': {
      'en': 'Confirm your Code',
      'es': 'Confirma tu Código',
      'pt': 'Confirme seu código',
    },
    '7fc5itjg': {
      'en': 'This code helps keep your account safe and secure.',
      'es': 'Este código ayuda a mantener su cuenta segura y protegida.',
      'pt': 'Este código ajuda a manter sua conta segura e protegida.',
    },
    'vy5aaddh': {
      'en': 'Confirm & Continue',
      'es': 'Confirmar y continuar',
      'pt': 'Confirmar e continuar',
    },
    'icelyg7b': {
      'en': 'Enter Pin Code Below',
      'es': 'Ingrese el código PIN a continuación',
      'pt': 'Digite o código PIN abaixo',
    },
    'luviatvf': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // phonePage
  {
    '5r5lgyr9': {
      'en': 'Phone Sign In',
      'es': 'Iniciar sesión en el teléfono',
      'pt': 'Entrar no telefone',
    },
    '6lmtrzco': {
      'en': 'Type in your phone number below to register.',
      'es': 'Escriba su número de teléfono a continuación para registrarse.',
      'pt': 'Digite seu telefone abaixo para se cadastrar.',
    },
    'ha261p70': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'nbxp4qft': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    's6b4eqkr': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    '6x8hin8x': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'bi3viia8': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'qfxilrww': {
      'en': 'Sign In with Phone',
      'es': 'Iniciar sesión con el teléfono',
      'pt': 'Entrar com telefone',
    },
    'f6bxoto2': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // profilePersonal
  {
    '3c0pjx7m': {
      'en': 'PROFILE',
      'es': 'PERFIL',
      'pt': 'PERFIL',
    },
    'k5u342qo': {
      'en': 'Here you can edit the profile that you created for this app',
      'es': 'Aquí puede editar el perfil que creó para esta aplicación',
      'pt': 'Aqui você pode editar o perfil que criou para este aplicativo',
    },
    '89qvlp15': {
      'en': 'Photo Profile',
      'es': 'Foto de perfil',
      'pt': 'Perfil da foto',
    },
    'txl9pol4': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'gdjgql94': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'vcbfob3d': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    '535n1kqj': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'uh8qmnd2': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'g28x9ql5': {
      'en': 'Reset your Password',
      'es': 'Restablecer su contraseña',
      'pt': 'Redefina sua senha',
    },
    'nzqzabqx': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    '6blypk9c': {
      'en': 'GENERAL INFORMATION',
      'es': 'INFORMACIÓN GENERAL',
      'pt': 'INFORMAÇÕES GERAIS',
    },
    'jy7a77ke': {
      'en': 'Incomplete profile',
      'es': 'perfil incompleto',
      'pt': 'perfil incompleto',
    },
    '0qo54p7i': {
      'en': 'Complete your Onboarding Process',
      'es': 'Complete su proceso de incorporación',
      'pt': 'Conclua seu processo de integração',
    },
    '9eaidids': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'nrx31k8y': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'p9nburtr': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'uafu3igf': {
      'en': 'Second Name',
      'es': 'Segundo nombre',
      'pt': 'Segundo nome',
    },
    'cdkmv524': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '1mda2ejb': {
      'en': 'Last Name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    'rgtf010x': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'clco5bqw': {
      'en': 'Second Last Name ',
      'es': 'Segundo apellido',
      'pt': 'Segundo sobrenome',
    },
    '2x8gwonh': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'k6q7fvf2': {
      'en': 'Spouse Last Name (optional)',
      'es': 'Apellido del cónyuge (opcional)',
      'pt': 'Sobrenome do cônjuge (opcional)',
    },
    'ph69djt8': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'fp36ijfv': {
      'en': 'Birthdate',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    '35v1d501': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'h2d4ywem': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    '9f3lgw1r': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'w13ws2lv': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'wa39fdfz': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'h4uid2yl': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    '8na9i3i8': {
      'en': 'Nationality',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'n7l7mmk1': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '8d30tgfw': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '33xfyk2a': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    '7jcx4f19': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '3pgy7pky': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'sktpcun1': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '5yppfwbd': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    '5y9jtqec': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'c6cd00ps': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'uv17jk9o': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '7jyzy29o': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'oqvh1lhm': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    '4lurut3o': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '2i6cdl6z': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'ybvyr6rl': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '7wefl91x': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'qb3mt1nu': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    '299fjvu1': {
      'en': 'Marital Status',
      'es': 'Estado civil',
      'pt': 'Estado civil',
    },
    '6tiqyauh': {
      'en': 'Single',
      'es': 'Soltero',
      'pt': 'Solteiro',
    },
    'xorywwe9': {
      'en': 'Married',
      'es': 'Casado',
      'pt': 'Casado',
    },
    'c2mvdb1z': {
      'en': 'Divorced',
      'es': 'Divorciado',
      'pt': 'divorciado',
    },
    '5fx4778r': {
      'en': 'Widow',
      'es': 'Viuda',
      'pt': 'Viúva',
    },
    'ey2yx3hr': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'j48i8f35': {
      'en': 'Employment',
      'es': 'Empleo',
      'pt': 'Emprego',
    },
    '3hpxtof2': {
      'en': 'Status ',
      'es': 'Estado',
      'pt': 'Status',
    },
    'jglsf9o1': {
      'en': 'Salary Worker',
      'es': 'trabajador asalariado',
      'pt': 'Assalariado',
    },
    'gsnh5tnk': {
      'en': 'Self Employeed',
      'es': 'Auto-empleado',
      'pt': 'Auto-empregado',
    },
    'crzfn7f9': {
      'en': 'Retired',
      'es': 'Jubilado',
      'pt': 'Aposentado',
    },
    'n3kb27ul': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'kzkiez7h': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'rgiwq91y': {
      'en': 'Place of Work',
      'es': 'Lugar de trabajo',
      'pt': 'Local de trabalho',
    },
    'egnczswx': {
      'en': 'Name of Company',
      'es': 'Nombre de la compañía',
      'pt': 'Nome da companhia',
    },
    'sn7gq14x': {
      'en': 'Enter your place of work..',
      'es': 'Ingresa tu lugar de trabajo..',
      'pt': 'Digite seu local de trabalho..',
    },
    'o0ir5rem': {
      'en': 'Ocupation',
      'es': 'Ocupación',
      'pt': 'Ocupação',
    },
    'mvlcfdof': {
      'en': 'Enter your ocupation..',
      'es': 'Ingresa tu ocupación..',
      'pt': 'Digite sua ocupação..',
    },
    '2lvxtft7': {
      'en': 'Job Address 1',
      'es': 'Dirección de trabajo 1',
      'pt': 'Endereço de trabalho 1',
    },
    'gfqdpc5p': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'stx9ved3': {
      'en': 'Job Address 2',
      'es': 'Dirección de trabajo 2',
      'pt': 'Endereço do trabalho 2',
    },
    'fe9djp0w': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'reqk5rdk': {
      'en': 'Telephone of Company',
      'es': 'Teléfono de Empresa',
      'pt': 'Telefone da Empresa',
    },
    'ounvpgta': {
      'en': 'Enter your cell phone..',
      'es': 'Ingresa tu celular..',
      'pt': 'Digite seu celular..',
    },
    's9dm3biu': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    '7lf73xuo': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'j90diy58': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    'w5zb4pb3': {
      'en': 'Enter your annual  salary..',
      'es': 'Ingresa tu salario anual..',
      'pt': 'Digite seu salário anual..',
    },
    '1zg2ea1e': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'jc8uvdop': {
      'en': 'Enter your job title...',
      'es': 'Ingrese el título de su trabajo...',
      'pt': 'Digite o título do seu trabalho...',
    },
    'c0ukis6z': {
      'en': 'Type of Business',
      'es': 'Tipo de negocio',
      'pt': 'Tipo de negócios',
    },
    'fb31vxl7': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'y7rd1v2q': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'hktoogqf': {
      'en': 'Source of  Net Worth',
      'es': 'Fuente del patrimonio neto',
      'pt': 'Fonte do patrimônio líquido',
    },
    '6hy4zfl5': {
      'en': 'SOURCE OF NET WORTH',
      'es': 'FUENTE DEL PATRIMONIO NETO',
      'pt': 'FONTE DE VALOR LÍQUIDO',
    },
    'p1jwpur7': {
      'en': 'Explain...',
      'es': 'Explicar...',
      'pt': 'Explicar...',
    },
    'mjb5dj7w': {
      'en': 'Home Address',
      'es': 'Direccion de casa',
      'pt': 'Endereço residencial',
    },
    '0hkbzjfa': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'rp20azuv': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'hjm5hoek': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'cjac9adj': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'leg0nhjv': {
      'en': 'Country ',
      'es': 'País',
      'pt': 'País',
    },
    'yb3xlejh': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    '3wl2jy6j': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'g0qjmzxk': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    'ekvrqza9': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    'g452o6hp': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'plw0x3he': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    '8xf2sjj3': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    'k5cvwx7t': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'ojer1i78': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    'dj7l82zf': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    'ca306jdq': {
      'en': 'House/Apartment Number',
      'es': 'Número de casa/apartamento',
      'pt': 'Número da casa/apartamento',
    },
    'm8o5t7ac': {
      'en': 'Enter your House/Apartment Number',
      'es': 'Ingrese su Número de Casa/Apartamento',
      'pt': 'Insira o número da sua casa/apartamento',
    },
    '2ojijt1i': {
      'en': 'Zip Code',
      'es': 'Código postal',
      'pt': 'CEP',
    },
    'qxx6gtjh': {
      'en': 'Enter Zip Code.',
      'es': 'Ingresa tu código postal.',
      'pt': 'Digite o código postal.',
    },
    'kl5rpdkx': {
      'en': 'No. of Dependents',
      'es': 'Número de dependientes',
      'pt': 'Número de dependentes',
    },
    'njca4nzq': {
      'en': 'How many people depend on you...',
      'es': 'Cuantas personas dependen de ti...',
      'pt': 'Quantas pessoas dependem de você...',
    },
    '1zrb7lw0': {
      'en': 'Educational Level ',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    'e5jv8q1z': {
      'en': 'High School',
      'es': 'Escuela secundaria',
      'pt': 'Ensino médio',
    },
    'yfa4p4ve': {
      'en': 'Masters Degree',
      'es': 'Maestría',
      'pt': 'Mestrado',
    },
    '3zncfbe2': {
      'en': 'Bachelors Degree',
      'es': 'Licenciatura',
      'pt': 'Diploma de bacharel',
    },
    'ajlwcidc': {
      'en': 'PHD',
      'es': 'Doctor',
      'pt': 'PHD',
    },
    'll1fa6c6': {
      'en': 'Educational Level',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    'z2j3zo62': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'v4jq1y6p': {
      'en': 'GENERAL INFORMATION',
      'es': 'INFORMACIÓN GENERAL',
      'pt': 'INFORMAÇÕES GERAIS',
    },
    'cpvesrrr': {
      'en':
          'Here you can find all your personal information,  remember to keep it updated',
      'es':
          'Aquí podrás encontrar toda tu información personal, recuerda mantenerla actualizada',
      'pt':
          'Aqui você pode encontrar todas as suas informações pessoais, lembre-se de mantê-las atualizadas',
    },
    '6yeourc5': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'vam9vrm8': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'y3aq1kzc': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'demiz18k': {
      'en': 'Second Name',
      'es': 'Segundo nombre',
      'pt': 'Segundo nome',
    },
    'evnm92rv': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '30pyugty': {
      'en': 'Last Name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    'wxe5fqla': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '43fd9agp': {
      'en': 'Second Last Name ',
      'es': 'Segundo apellido',
      'pt': 'Segundo sobrenome',
    },
    'yq47it5o': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '5hzguhcc': {
      'en': 'Spouse Last Name (optional)',
      'es': 'Apellido del cónyuge (opcional)',
      'pt': 'Sobrenome do cônjuge (opcional)',
    },
    'lca6osit': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'lxp9jsrl': {
      'en': 'Birthdate',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    'zxbrtga2': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    '069b7x10': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    'g2w66i06': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'lzt66n5b': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'm2so49gd': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'w5ef2x6l': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'd1jvppy0': {
      'en': 'Nationality',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'iee2af6y': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'h1t2cu0g': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'g4re7zeu': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'mm29yv7p': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'x3xu91z4': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'lli1p670': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'npbg8k3t': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'g2djuwg7': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'qgn67saf': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'anjewcwy': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'hp8jnyt7': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'iytujs1f': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'z9sqpfma': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '9uoszj36': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    '82sjhm0h': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'kn8464dl': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'v6u0zg6t': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'zymcpedr': {
      'en': 'Marital Status',
      'es': 'Estado civil',
      'pt': 'Estado civil',
    },
    '0pjo8ht8': {
      'en': 'Single',
      'es': 'Soltero',
      'pt': 'Solteiro',
    },
    '93s3r9ox': {
      'en': 'Married',
      'es': 'Casado',
      'pt': 'Casado',
    },
    'qszwz3fj': {
      'en': 'Divorced',
      'es': 'Divorciado',
      'pt': 'divorciado',
    },
    'zepljf9b': {
      'en': 'Widow',
      'es': 'Viuda',
      'pt': 'Viúva',
    },
    '7xapnr0l': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'az24jcd8': {
      'en': 'Employment',
      'es': 'Empleo',
      'pt': 'Emprego',
    },
    'x0l12jb4': {
      'en': 'Status ',
      'es': 'Estado',
      'pt': 'Status',
    },
    'q2e0j5fv': {
      'en': 'Salary Worker',
      'es': 'trabajador asalariado',
      'pt': 'Assalariado',
    },
    'wxfywtyo': {
      'en': 'Self Employeed',
      'es': 'Auto-empleado',
      'pt': 'Auto-empregado',
    },
    'edaivgue': {
      'en': 'Retired',
      'es': 'Jubilado',
      'pt': 'Aposentado',
    },
    'u2rjqdzf': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'h2xz7ld8': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'q10lacx3': {
      'en': 'Place of Work',
      'es': 'Lugar de trabajo',
      'pt': 'Local de trabalho',
    },
    'mlfkty75': {
      'en': 'Name of Company',
      'es': 'Nombre de la compañía',
      'pt': 'Nome da companhia',
    },
    '9jl2p46y': {
      'en': 'Enter your place of work..',
      'es': 'Ingresa tu lugar de trabajo..',
      'pt': 'Digite seu local de trabalho..',
    },
    '9eoop5dr': {
      'en': 'Ocupation',
      'es': 'Ocupación',
      'pt': 'Ocupação',
    },
    'aevli4xe': {
      'en': 'Enter your ocupation..',
      'es': 'Ingresa tu ocupación..',
      'pt': 'Digite sua ocupação..',
    },
    'mdaituqx': {
      'en': 'Job Address 1',
      'es': 'Dirección de trabajo 1',
      'pt': 'Endereço de trabalho 1',
    },
    'rgz6wro2': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'vmy07syp': {
      'en': 'Job Address 2',
      'es': 'Dirección de trabajo 2',
      'pt': 'Endereço do trabalho 2',
    },
    'mvisk5bj': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    '303knk3b': {
      'en': 'Telephone of Company',
      'es': 'Teléfono de Empresa',
      'pt': 'Telefone da Empresa',
    },
    'ntwojt0s': {
      'en': 'Enter your cell phone..',
      'es': 'Ingresa tu celular..',
      'pt': 'Digite seu celular..',
    },
    'rd69hqo5': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    'uzhoxn1e': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'lsomc13l': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    'b4ig3res': {
      'en': 'Enter your annual  salary..',
      'es': 'Ingresa tu salario anual..',
      'pt': 'Digite seu salário anual..',
    },
    'jixeg4gt': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'xh6r8tzz': {
      'en': 'Enter your job title...',
      'es': 'Ingrese el título de su trabajo...',
      'pt': 'Digite o título do seu trabalho...',
    },
    'pzp7ts9q': {
      'en': 'Type of Business',
      'es': 'Tipo de negocio',
      'pt': 'Tipo de negócios',
    },
    'rmnr6yro': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'zpci1gy8': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'gm4m2ufs': {
      'en': 'Source of  Net Worth',
      'es': 'Fuente del patrimonio neto',
      'pt': 'Fonte do patrimônio líquido',
    },
    'xv9nl8so': {
      'en': 'SOURCE OF NET WORTH',
      'es': 'FUENTE DEL PATRIMONIO NETO',
      'pt': 'FONTE DE VALOR LÍQUIDO',
    },
    'g543ez00': {
      'en': 'Explain...',
      'es': 'Explicar...',
      'pt': 'Explicar...',
    },
    'uf7zq1gx': {
      'en': 'Home Address',
      'es': 'Direccion de casa',
      'pt': 'Endereço residencial',
    },
    'oosid3wn': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '6vm84iwu': {
      'en': 'Panamá Oeste',
      'es': 'Panamá Oeste',
      'pt': 'Panamá Oeste',
    },
    'fo1rxp2s': {
      'en': 'Chiriqui',
      'es': 'Chiriquí',
      'pt': 'Chiriqui',
    },
    '5o9ngwte': {
      'en': 'Bocas del Toro',
      'es': 'bocas del toro',
      'pt': 'Bocas del Toro',
    },
    'h5hx857i': {
      'en': 'Colon',
      'es': 'Colon',
      'pt': 'Cólon',
    },
    '46v873xh': {
      'en': 'Herrera',
      'es': 'herrera',
      'pt': 'Herrera',
    },
    'wh7fs5mg': {
      'en': 'Cocle',
      'es': 'Coclé',
      'pt': 'coco',
    },
    'nexghusg': {
      'en': 'Veraguas ',
      'es': 'Veraguas',
      'pt': 'Veraguas',
    },
    'e0hp330s': {
      'en': 'Darien',
      'es': 'Darién',
      'pt': 'Darien',
    },
    'rqw8ynrp': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    'v2ul4zzr': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    'xomwoww3': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'wyg5cv6l': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    'bcaogait': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    'sono1keb': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'v36fl9ov': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    'r0xlztc5': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    '0hfosxu5': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'qs57wu15': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    '477n2429': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    's59z3jn7': {
      'en': 'House/Apartment Number',
      'es': 'Número de casa/apartamento',
      'pt': 'Número da casa/apartamento',
    },
    'av1evu8n': {
      'en': 'Enter your House/Apartment Number',
      'es': 'Ingrese su Número de Casa/Apartamento',
      'pt': 'Insira o número da sua casa/apartamento',
    },
    '3pw4wqy4': {
      'en': 'Zip Code',
      'es': 'Código postal',
      'pt': 'CEP',
    },
    'ff3kb46t': {
      'en': 'Enter Zip Code.',
      'es': 'Ingresa tu código postal.',
      'pt': 'Digite o código postal.',
    },
    'n95sf580': {
      'en': 'No. of Dependents',
      'es': 'Número de dependientes',
      'pt': 'Número de dependentes',
    },
    '5q5v8qj4': {
      'en': 'How many people depend on you...',
      'es': 'Cuantas personas dependen de ti...',
      'pt': 'Quantas pessoas dependem de você...',
    },
    '5zb71a7l': {
      'en': 'Educational Level',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    '59spsu0q': {
      'en': 'High School',
      'es': 'Escuela secundaria',
      'pt': 'Ensino médio',
    },
    'h5o697mt': {
      'en': 'Masters Degree',
      'es': 'Maestría',
      'pt': 'Mestrado',
    },
    'd6momz9q': {
      'en': 'Bachelors Degree',
      'es': 'Licenciatura',
      'pt': 'Diploma de bacharel',
    },
    'f85gh269': {
      'en': 'PHD',
      'es': 'Doctor',
      'pt': 'PHD',
    },
    'rjbrfilv': {
      'en': 'Educational Level',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    'c41vdqvo': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    '795cf5k5': {
      'en': 'REFERENCES',
      'es': 'REFERENCIAS',
      'pt': 'REFERÊNCIAS',
    },
    '02pe0ku5': {
      'en': 'Incomplete Commercial Reference',
      'es': 'Referencia comercial incompleta',
      'pt': 'Referência Comercial Incompleta',
    },
    'xxn47zp5': {
      'en': 'Incomplete Bank Reference',
      'es': 'Referencia bancaria incompleta',
      'pt': 'Referência do banco incompleta',
    },
    'qkwftmly': {
      'en': 'Add in this section your bank and commercial references',
      'es': 'Añade en esta sección tus referencias bancarias y comerciales',
      'pt': 'Adicione nesta secção as suas referências bancárias e comerciais',
    },
    'dpmygjl0': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    '3fkm2xr6': {
      'en': 'Add your bank reference',
      'es': 'Añade tu referencia bancaria',
      'pt': 'Adicione a sua referência bancária',
    },
    'npi5kz6a': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar referência',
    },
    '1g43587j': {
      'en': 'BANK NAME',
      'es': 'NOMBRE DEL BANCO',
      'pt': 'NOME DO BANCO',
    },
    'kwbl9ioo': {
      'en': 'ADDRESS',
      'es': 'DIRECCIÓN',
      'pt': 'ENDEREÇO',
    },
    '4t6wx4bu': {
      'en': 'ACCOUNT TYPE',
      'es': 'TIPO DE CUENTA',
      'pt': 'TIPO DE CONTA',
    },
    'o1ij2v4h': {
      'en': 'CONTACT ',
      'es': 'CONTACTO',
      'pt': 'CONTATO',
    },
    'v5xd859c': {
      'en': 'Comercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    '9f47r4sw': {
      'en': 'Add your Comercial Reference',
      'es': 'Agrega tu Referencia Comercial',
      'pt': 'Adicione a sua Referência Comercial',
    },
    '37km6za1': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar Referência',
    },
    '9m6897zt': {
      'en': 'COMPANY NAME',
      'es': 'NOMBRE DE EMPRESA',
      'pt': 'NOME DA EMPRESA',
    },
    '02q73iwf': {
      'en': 'ADDRESS ',
      'es': 'DIRECCIÓN',
      'pt': 'ENDEREÇO',
    },
    'k78mjyzj': {
      'en': 'TYPE OF RELATIONSHIP',
      'es': 'TIPO DE RELACIÓN',
      'pt': 'TIPO DE RELACIONAMENTO',
    },
    'o2abvdvl': {
      'en': 'CONTACT',
      'es': 'CONTACTO',
      'pt': 'CONTATO',
    },
    '8exvt972': {
      'en': 'BENEFICIARY DESIGNATION',
      'es': 'DESIGNACIÓN BENEFICIARIA',
      'pt': 'DESIGNAÇÃO DO BENEFICIÁRIO',
    },
    'q8rx9zrd': {
      'en': 'Add Alternative Beneficiary',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    '889madgp': {
      'en': 'Add  Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    '9h5wwd2b': {
      'en': 'Beneficiary List',
      'es': 'Lista de beneficiarios',
      'pt': 'Lista de Beneficiários',
    },
    'xaq6ik0a': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'r4bjnfkh': {
      'en': 'hereby designate as Beneficiaries the following persons:',
      'es': 'designan como Beneficiarios a las siguientes personas:',
      'pt': 'designar como Beneficiários as seguintes pessoas:',
    },
    '3qmksgig': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    '2xcnb4a7': {
      'en': 'Beneficiary Information',
      'es': 'información de beneficiario',
      'pt': 'Informação do Beneficiário',
    },
    'r5i7wmi0': {
      'en': 'Assigned Percentage ',
      'es': 'Porcentaje asignado',
      'pt': 'Porcentagem Atribuída',
    },
    'x8tvtsdn': {
      'en': 'I declare the following:',
      'es': 'Declaro lo siguiente:',
      'pt': 'Declaro o seguinte:',
    },
    '0p6mteru': {
      'en':
          '1. As of the date of this notification, I have not appointed third persons other than the listed Beneficiaries as heirs or legatees of this account.\n2. At the time of my death, provided that there is no restricted tax or precautionary measure on the account, the balance of the account will be delivered to\nthe beneficiary (ies) in the percentage assignations mentioned above.\n3. In case any of the beneficiaries are minors or have been declared legally incapacitated, the distribution of the amount assigned to that person will be\nmade to their guardian, as the case may be.\n4. In the event that on the date of my death, any of the listed beneficiaries are deceased, and I did not request the Bank to remove them as such, the amount\nassigned to that person will be distributed to: ',
      'es':
          '1. A la fecha de esta notificación, no he designado como herederos o legatarios de esta cuenta a terceros distintos de los Beneficiarios indicados.\n2. Al momento de mi muerte, siempre que no exista impuesto restringido o medida cautelar en la cuenta, el saldo de la cuenta será entregado a\nel (los) beneficiario(s) en las asignaciones porcentuales antes mencionadas.\n3. En caso de que alguno de los beneficiarios sea menor de edad o haya sido declarado incapacitado legalmente, la distribución de la cantidad asignada a esa persona se\nhecho a su tutor, según el caso.\n4. En caso de que a la fecha de mi fallecimiento, alguno de los beneficiarios señalados haya fallecido, y no solicité al Banco su baja como tal, la cantidad\nasignada a esa persona se distribuirá a:',
      'pt':
          '1. Até a data desta notificação, não nomeei terceiros que não os Beneficiários listados como herdeiros ou legatários desta conta.\n2. No momento da minha morte, desde que não haja restrição fiscal ou medida cautelar na conta, o saldo da conta será entregue a\no(s) beneficiário(s) nas atribuições percentuais acima mencionadas.\n3. Caso algum dos beneficiários seja menor de idade ou tenha sido declarado incapaz, a distribuição do valor atribuído a essa pessoa será\nao seu responsável, conforme o caso.\n4. Caso na data do meu falecimento algum dos beneficiários listados seja falecido e eu não tenha solicitado ao Banco a sua remoção como tal, o montante\natribuído a essa pessoa será distribuído para:',
    },
    'tdpv4uqa': {
      'en': ' Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '0kgdcvpy': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'gnuwa0jc': {
      'en': 'ID No. ',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'slusmq4m': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'zt6dg3jt': {
      'en': 'Birthdate',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    'l6sudms3': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'qnnkme2p': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'h7qlmubr': {
      'en': 'Phone No',
      'es': 'Telefono no',
      'pt': 'Telefone não',
    },
    'e7mt83ox': {
      'en': 'Phone No',
      'es': 'Telefono no',
      'pt': 'Telefone não',
    },
    'lhc48lvk': {
      'en': 'Email ',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'gu8525u5': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'vmmgrwk1': {
      'en': 'Save',
      'es': 'Ahorrar',
      'pt': 'Salvar',
    },
    '2imzj4rz': {
      'en': 'DOCUMENTS/FILES',
      'es': 'DOCUMENTOS/ARCHIVOS',
      'pt': 'DOCUMENTOS/ARQUIVOS',
    },
    'n7y7l8vf': {
      'en': 'Upload Invoice for payment of services',
      'es': 'Subir Factura por pago de servicios',
      'pt': 'Carregar Fatura para pagamento de serviços',
    },
    'ayk00piu': {
      'en': 'Upload  Proof of Payment',
      'es': 'Subir comprobante de pago',
      'pt': 'Carregar comprovante de pagamento',
    },
    '1zh9vjv5': {
      'en': 'Upload your Passport',
      'es': 'Sube tu Pasaporte',
      'pt': 'Carregue seu Passaporte',
    },
    'e94dmpl2': {
      'en': 'Upload your Local ID',
      'es': 'Cargue su identificación local',
      'pt': 'Carregue seu ID local',
    },
    'oqbnphj0': {
      'en':
          'Here you can attach your personal documents such as identity card, passport and proof of income',
      'es':
          'Aquí puede adjuntar sus documentos personales como cédula de identidad, pasaporte y comprobante de ingresos',
      'pt':
          'Aqui você pode anexar seus documentos pessoais como carteira de identidade, passaporte e comprovante de renda',
    },
    'zs1u37pc': {
      'en': '1.  Local ID',
      'es': '1. Identificación local',
      'pt': '1. ID local',
    },
    'io5nwkbq': {
      'en': '2. Passport',
      'es': '2. Pasaporte',
      'pt': '2. Passaporte',
    },
    'h8co5yt0': {
      'en': '3. Proof of Payment',
      'es': '3. Comprobante de Pago',
      'pt': '3. Comprovante de Pagamento',
    },
    '4o5dxj36': {
      'en': '4.  Invoice for payment of services ',
      'es': '4. Factura de pago de servicios',
      'pt': '4. Fatura de pagamento de serviços',
    },
    '67u6lu1d': {
      'en': 'Profile record',
      'es': 'Registro de perfil',
      'pt': 'registro de perfil',
    },
    'zliykih0': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'g9fw2as2': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'bxk1u7ge': {
      'en': 'General Information',
      'es': 'Información general',
      'pt': 'Informações gerais',
    },
    'vkaxvxuq': {
      'en':
          'Complete the information requested in the general information section',
      'es':
          'Complete la información solicitada en la sección de información general',
      'pt':
          'Preencha as informações solicitadas na seção de informações gerais',
    },
    'dn2th3hu': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    'jj6r8tfh': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tengas',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'jqysdoty': {
      'en': 'Commercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    '8ueep7zv': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tengas',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'duah5fd2': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'hdzfcn5b': {
      'en':
          'adds the beneficiary or beneficiaries of your accounts in the event of your death.',
      'es':
          'agrega el beneficiario o beneficiarios de sus cuentas en caso de su muerte.',
      'pt':
          'adiciona o beneficiário ou beneficiários de suas contas no caso de sua morte.',
    },
    'nzky9dpi': {
      'en': 'Add Alternative Beneficiary ',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    '3zu1aisi': {
      'en': 'Add the beneficiary in the event of the death of your beneficiary',
      'es':
          'Añadir el beneficiario en caso de fallecimiento de su beneficiario',
      'pt':
          'Adicione o beneficiário em caso de falecimento do seu beneficiário',
    },
    '1qi0dnrm': {
      'en': 'add signature',
      'es': 'agregar firma',
      'pt': 'adicionar assinatura',
    },
    'ttaj3s0m': {
      'en': 'add your signature as close as possible to your identity document',
      'es':
          'agregue su firma lo más cerca posible de su documento de identidad',
      'pt':
          'adicione sua assinatura o mais próximo possível do seu documento de identidade',
    },
    'jvopj6sm': {
      'en': 'Upload Local ID',
      'es': 'Cargar identificación local',
      'pt': 'Carregar ID local',
    },
    'jge31z0f': {
      'en': 'upload the photo of your local ID',
      'es': 'sube la foto de tu DNI local',
      'pt': 'carregue a foto do seu ID local',
    },
    '91jrxviv': {
      'en': 'Upload your Passport',
      'es': 'Sube tu Pasaporte',
      'pt': 'Carregue seu Passaporte',
    },
    'hg0vknf8': {
      'en': 'upload the photo of your Passport',
      'es': 'sube la foto de tu Pasaporte',
      'pt': 'carregue a foto do seu passaporte',
    },
    'ati5r88q': {
      'en': 'Upload your Proof of Payment',
      'es': 'Sube tu Comprobante de Pago',
      'pt': 'Carregue o seu comprovativo de pagamento',
    },
    'v6oo468s': {
      'en': 'upload the photo of your Proof of Payment',
      'es': 'sube la foto de tu Comprobante de Pago',
      'pt': 'faça o upload da foto do seu comprovante de pagamento',
    },
    'pcxh2ee2': {
      'en': 'Upload your Invoice for payment of services ',
      'es': 'Sube tu Factura de pago de servicios',
      'pt': 'Carregue a sua Fatura para pagamento de serviços',
    },
    'qe36ndvt': {
      'en': 'upload the photo of your Invoice for payment of services ',
      'es': 'sube la foto de tu Factura de pago de servicios',
      'pt':
          'faça o upload da foto da sua Nota Fiscal para pagamento de serviços',
    },
    'y3h9r7vk': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // usersPage
  {
    '8mezdwc8': {
      'en': 'Personal',
      'es': 'Natural\nPersona',
      'pt': 'Natural\nPessoa',
    },
    '7oqrmnzf': {
      'en': 'Natural Person Users',
      'es': 'Usuarios Persona Física',
      'pt': 'Usuários Pessoa Física',
    },
    'dxa0ua16': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'pw359q2u': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'pll0ab5c': {
      'en': 'Last Active',
      'es': 'Último Activo',
      'pt': 'ativo pela última vez',
    },
    'cjz1w490': {
      'en': 'Last Edited',
      'es': 'Última edición',
      'pt': 'última edição',
    },
    'a8hbs7vu': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    'obxt6h0z': {
      'en': 'Corp',
      'es': 'Corporativo\nEntidad',
      'pt': 'corporativo\nEntidade',
    },
    'hfbvumm9': {
      'en': 'Corporate Entity Users',
      'es': 'Usuarios de entidades corporativas',
      'pt': 'Usuários Pessoa Jurídica',
    },
    'lk41yz1t': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'k1op49ta': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '4uw2gpmg': {
      'en': 'Last Active',
      'es': 'Último Activo',
      'pt': 'ativo pela última vez',
    },
    'u9wyk8db': {
      'en': 'Last Edited',
      'es': 'Última edición',
      'pt': 'última edição',
    },
    'jacsqzun': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    '8xgb63im': {
      'en': 'Registration',
      'es': 'Registro',
      'pt': 'Cadastro',
    },
    'qo4vjbrz': {
      'en': 'user@domainname.com',
      'es': 'usuario@nombrededominio.com',
      'pt': 'usuário@domainname.com',
    },
    '5ajvah4u': {
      'en': 'Referrers',
      'es': 'AFILIADO\nSOCIOS',
      'pt': 'AFILIADO\nPARCEIROS',
    },
    'qk3wd352': {
      'en': 'Affiliate Partner Users',
      'es': 'Usuarios de socios afiliados',
      'pt': 'Usuários Parceiros Afiliados',
    },
    '4fyt2ucd': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'aug1czg0': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'jbk958j9': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    '55pzyrbh': {
      'en': 'Code',
      'es': 'Registro',
      'pt': 'Cadastro',
    },
    'xzx1x34d': {
      'en': 'Admins',
      'es': 'administradores',
      'pt': 'Administradores',
    },
    'jmtdqdld': {
      'en': 'Admins List',
      'es': 'Lista de administradores',
      'pt': 'Lista de Administradores',
    },
    '4q9hj7db': {
      'en': 'Create Admin',
      'es': '',
      'pt': '',
    },
    'nwkkej6h': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'dty5zov6': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'n76t1b10': {
      'en': 'Create at',
      'es': 'Último Activo',
      'pt': 'ativo pela última vez',
    },
    '8vnd8djm': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'echj9bcg': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '9ijyezdb': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'ri7mrkew': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'c20zs0nr': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    '86288vfg': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    '51zo4bs6': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    'kfczubcp': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'zzs3rwc5': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'x8e6ej40': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    'tlpm8vz2': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '5wm8xglh': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'crw5li1c': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    '8gqb4jpn': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    'dn4j08kn': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '5ve25ugn': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'ywkargxi': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // homePersonal
  {
    'm0x1mjp1': {
      'en': 'Personal Bank',
      'es': 'Banco Personal',
      'pt': 'banco pessoal',
    },
    'ejtxzihy': {
      'en':
          'Welcome to our personal banking, from here you can request our main products',
      'es':
          'Bienvenido a nuestra banca personal, desde aquí puedes solicitar nuestros principales productos',
      'pt':
          'Bem-vindo ao nosso banco pessoal, aqui você pode solicitar nossos principais produtos',
    },
    's08zq9be': {
      'en': 'Hi, ',
      'es': 'Hola,',
      'pt': 'Oi,',
    },
    'x8huwh2l': {
      'en': 'these are the products we have for you:',
      'es': 'Estos son los productos que tenemos para ti:',
      'pt': 'estes são os produtos que temos para si:',
    },
    'v65mo707': {
      'en': 'Personal Account',
      'es': 'Cuenta personal',
      'pt': 'Conta pessoal',
    },
    '55fwtwf0': {
      'en':
          'from here you can request a personal account by filling out all the fields of the forms and providing the requested documentation.',
      'es':
          'desde aquí puede solicitar una cuenta personal rellenando todos los campos de los formularios y aportando la documentación solicitada.',
      'pt':
          'a partir daqui você pode solicitar uma conta pessoal preenchendo todos os campos dos formulários e fornecendo a documentação solicitada.',
    },
    '9lu3z7bs': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    '8bojh8ix': {
      'en': 'Continue ',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    'xlv8ilcu': {
      'en': 'Visa Debit',
      'es': 'Tarjeta de débito Visa',
      'pt': 'Débito Visa',
    },
    'kowejmy5': {
      'en': 'request your debit visa and enjoy the ease of our service.',
      'es':
          'solicita tu visa de débito y disfruta de la facilidad de nuestro servicio.',
      'pt':
          'solicite seu visto de débito e usufrua da facilidade de nosso atendimento.',
    },
    '4tumb6cx': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    '8ez0cwdr': {
      'en': 'Online Banking',
      'es': 'Banca en línea',
      'pt': 'Acesso a operações bancárias via Internet',
    },
    'jns8if6f': {
      'en': 'request access to your online banking.',
      'es': 'solicitar acceso a su banca en línea.',
      'pt': 'solicitar acesso ao seu banco on-line.',
    },
    'tepe3xun': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    'xh5yh9mh': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    'fa3st35b': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    'noq8s5gc': {
      'en': 'Request list',
      'es': 'Lista de solicitudes',
      'pt': 'lista de pedidos',
    },
    'nw2350la': {
      'en': 'Here you can see the requested products and download them.',
      'es': 'Aquí puede ver los productos solicitados y descargarlos.',
      'pt': 'Aqui você pode ver os produtos solicitados e baixá-los.',
    },
    '2c4qyjg8': {
      'en': 'Products',
      'es': 'productos',
      'pt': 'Produtos',
    },
    '6nsrqy2s': {
      'en': 'Type',
      'es': 'Tipo',
      'pt': 'Tipo',
    },
    'zai0ivhz': {
      'en': 'Category',
      'es': 'Categoría',
      'pt': 'Categoria',
    },
    'vz1idwd0': {
      'en': 'Created At',
      'es': 'Creado en',
      'pt': 'Criado em',
    },
    'rsgw2a0o': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    '4m59pr8u': {
      'en': 'Action',
      'es': 'Acción',
      'pt': 'Ação',
    },
    'j0r2s6bl': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'a7gu2xd4': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
    'a0dw23u6': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    '11t83awu': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'rgborykn': {
      'en': 'General Information',
      'es': 'Información general',
      'pt': 'Informações gerais',
    },
    'mt5dakxe': {
      'en':
          'Complete the information requested in the general information section',
      'es':
          'Complete la información solicitada en la sección de información general',
      'pt':
          'Preencha as informações solicitadas na seção de informações gerais',
    },
    '30nee363': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    '0o3hxcix': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tienes',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'xq2tk5ed': {
      'en': 'Commercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    'rii7f0i3': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tienes',
      'pt': 'Adicione as referências bancárias que possui',
    },
    '9ykepc18': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'advy18bk': {
      'en':
          'adds the beneficiary or beneficiaries of your accounts in the event of your death.',
      'es':
          'agrega el beneficiario o beneficiarios de sus cuentas en caso de su muerte.',
      'pt':
          'adiciona o beneficiário ou beneficiários de suas contas no caso de sua morte.',
    },
    'nyhanyey': {
      'en': 'Add Alternative Beneficiary ',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    '6izjmq23': {
      'en': 'Add the beneficiary in the event of the death of your beneficiary',
      'es':
          'Añadir el beneficiario en caso de fallecimiento de su beneficiario',
      'pt':
          'Adicione o beneficiário em caso de falecimento do seu beneficiário',
    },
    'yqhoft3e': {
      'en': 'add signature',
      'es': 'agregar firma',
      'pt': 'adicionar assinatura',
    },
    'kzkyn74g': {
      'en': 'add your signature as close as possible to your identity document',
      'es':
          'agregue su firma lo más cerca posible de su documento de identidad',
      'pt':
          'adicione sua assinatura o mais próximo possível do seu documento de identidade',
    },
    'qtzld8rc': {
      'en': 'Upload Local ID',
      'es': 'Cargar identificación local',
      'pt': 'Carregar ID local',
    },
    'rf8sz9i9': {
      'en': 'upload the photo of your local ID',
      'es': 'sube la foto de tu DNI local',
      'pt': 'carregue a foto do seu ID local',
    },
    'jrmzq7pv': {
      'en': 'Upload your Passport',
      'es': 'Sube tu Pasaporte',
      'pt': 'Carregue seu Passaporte',
    },
    'mndhbip8': {
      'en': 'upload the photo of your Passport',
      'es': 'sube la foto de tu Pasaporte',
      'pt': 'carregue a foto do seu passaporte',
    },
    'o2iktw34': {
      'en': 'Upload your Proof of Payment',
      'es': 'Sube tu Comprobante de Pago',
      'pt': 'Carregue o seu comprovativo de pagamento',
    },
    '5k14d0qb': {
      'en': 'upload the photo of your Proof of Payment',
      'es': 'sube la foto de tu Comprobante de Pago',
      'pt': 'faça o upload da foto do seu comprovante de pagamento',
    },
    'hb38m208': {
      'en': 'Upload your Invoice for payment of services ',
      'es': 'Sube tu Factura de pago de servicios',
      'pt': 'Carregue a sua Fatura para pagamento de serviços',
    },
    'q8ufgj83': {
      'en': 'upload the photo of your Invoice for payment of services ',
      'es': 'sube la foto de tu Factura de pago de servicios',
      'pt':
          'faça o upload da foto da sua Nota Fiscal para pagamento de serviços',
    },
    'c1id6uwb': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // Onboarding
  {
    '46diqdb7': {
      'en': 'Welcome to our Onboarding platform!',
      'es': '¡Bienvenido a nuestra plataforma de Onboarding!',
      'pt': 'Bem-vindo à nossa plataforma de Onboarding!',
    },
    '4wvkzrib': {
      'en':
          'Where everything is designed to make your life simpler and more practical! We are committed to streamlining your banking experience, bringing everything you need right at your fingertips.',
      'es':
          '¡Donde todo está diseñado para hacer tu vida más simple y práctica! Estamos comprometidos a optimizar su experiencia bancaria, poniendo todo lo que necesita al alcance de su mano.',
      'pt':
          'Onde tudo é pensado para tornar sua vida mais simples e prática! Estamos empenhados em simplificar a sua experiência bancária, trazendo tudo o que você precisa ao seu alcance.',
    },
    'plofn3jk': {
      'en': 'Log Out',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    'bsfz45yr': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    'gr4rq23e': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // referralsAfiliatePage
  {
    'dnff62s6': {
      'en': 'Referred \nCustomers',
      'es': 'Referido\nClientes',
      'pt': 'Indicado\nClientes',
    },
    'fcg3nj31': {
      'en': 'Natural Person Users',
      'es': 'Usuarios Persona Física',
      'pt': 'Usuários Pessoa Física',
    },
    '36tpr6fk': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    '67xmvqvk': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'lwixmleg': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    'eyz09jwr': {
      'en': 'Referred \nCorporate Entity',
      'es': 'Referido\nEntidad corporativa',
      'pt': 'Indicado\nEntidade corporativa',
    },
    'pt6rc64r': {
      'en': 'Corporate Entity Users',
      'es': 'Usuarios de entidades corporativas',
      'pt': 'Usuários Pessoa Jurídica',
    },
    'zvrb2jig': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'u593opwy': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'ikz2h9nw': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    'prusimmb': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'fqdlnl9n': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    '32mg2cwf': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // profilereferralsAfiliatePage
  {
    '0jr9lbfw': {
      'en':
          'Welcome to our affiliate program! As an affiliate of Atlas Bank, you have the opportunity to earn commissions by referring customers who apply for accounts and other banking products using your unique referral code.',
      'es':
          '¡Bienvenido a nuestro programa de afiliados! Como afiliado de Atlas Bank, tiene la oportunidad de ganar comisiones al referir clientes que solicitan cuentas y otros productos bancarios utilizando su código de referencia único.',
      'pt':
          'Bem-vindo ao nosso programa de afiliados! Como afiliado do Atlas Bank, você tem a oportunidade de ganhar comissões indicando clientes que solicitam contas e outros produtos bancários usando seu código de referência exclusivo.',
    },
    '6fz69eof': {
      'en': 'My Referrals',
      'es': 'Mis referencias',
      'pt': 'Minhas recomendações',
    },
    'p13ueeg2': {
      'en': 'Personal',
      'es': 'Personal',
      'pt': 'Pessoal',
    },
    '7cki2kfh': {
      'en': 'Corporate',
      'es': 'Corporativo',
      'pt': 'corporativo',
    },
    'jvvxlbqz': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'n5qepsf2': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'mmzm3agt': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // settingAfiliatePage
  {
    'yt947xvj': {
      'en': 'Photo Profile',
      'es': 'Foto de perfil',
      'pt': 'Perfil da foto',
    },
    'bjzlvu2r': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'k8zz3sey': {
      'en': 'Last Name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    '6dfhv8fr': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    '1j4gdw1j': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'flj72zdf': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'yr2fgfq2': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'xjkm2d9g': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    '3imgfr12': {
      'en': 'Reset your Password',
      'es': 'Restablecer su contraseña',
      'pt': 'Redefina sua senha',
    },
    'fneur4ht': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'iop436kd': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    '0fl7z3oh': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'dwbwnldj': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // adminProfile
  {
    'cznd8dhe': {
      'en': 'Photo Profile',
      'es': 'Foto de perfil',
      'pt': 'Perfil da foto',
    },
    'mr36u4fl': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    '75coq4ed': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'dxu11e5y': {
      'en': 'Reset your Password',
      'es': 'Restablecer su contraseña',
      'pt': 'Redefina sua senha',
    },
    '4xhzcssd': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'dlr7it5o': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    'tvhkf1so': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'ar8oi7a4': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'swqog8qn': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'hjr17oh4': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    'l8122tik': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    '7h8u5zxq': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    'nu4ay3m4': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '5rtob8be': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'b7ukqa3g': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    '43koc3j6': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'r7j83isk': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '9s1524jm': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    'mh1n8iq7': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    'gvknw024': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'vaiag6ii': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'zeyrsjqa': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // adminDashboard
  {
    'mzsttmqo': {
      'en': 'Overview',
      'es': 'Descripción general',
      'pt': 'Visão geral',
    },
    '1efmjf7x': {
      'en': 'You will find your quote options below.',
      'es': 'Encontrará sus opciones de cotización a continuación.',
      'pt': 'Você encontrará suas opções de cotação abaixo.',
    },
    '4wm26nbc': {
      'en': '1230',
      'es': '1230',
      'pt': '1230',
    },
    'xar1zhdi': {
      'en': 'Current Account',
      'es': 'Cuenta actual',
      'pt': 'Conta corrente',
    },
    'z3vz740t': {
      'en': 'Update: 2:15 am ',
      'es': 'Actualización: 2:15 am',
      'pt': 'Atualização: 2h15',
    },
    'br8xpypm': {
      'en': '323',
      'es': '323',
      'pt': '323',
    },
    '974ljigv': {
      'en': 'Savings Account ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'xiug5wgi': {
      'en': 'Update: 2:15 am ',
      'es': 'Actualización: 2:15 am',
      'pt': 'Atualização: 2h15',
    },
    'l0bkzzwp': {
      'en': '234',
      'es': '234',
      'pt': '234',
    },
    '33h0lf6z': {
      'en': 'Current Account',
      'es': 'Cuenta actual',
      'pt': 'Conta corrente',
    },
    '6f0kaz1p': {
      'en': 'Update: 2:15 am ',
      'es': 'Actualización: 2:15 am',
      'pt': 'Atualização: 2h15',
    },
    'l8vcru11': {
      'en': '567',
      'es': '567',
      'pt': '567',
    },
    'tynadcxj': {
      'en': 'On line bank',
      'es': 'banco en línea',
      'pt': 'banco online',
    },
    'qsku71oe': {
      'en': 'Update: 2:15 am ',
      'es': 'Actualización: 2:15 am',
      'pt': 'Atualização: 2h15',
    },
    'y4yqdy08': {
      'en': '324',
      'es': '324',
      'pt': '324',
    },
    '5s71cino': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    '26qdo0pp': {
      'en': 'Update: 2:15 am ',
      'es': 'Actualización: 2:15 am',
      'pt': 'Atualização: 2h15',
    },
    '3epbrk2g': {
      'en': 'Submitted Forms',
      'es': 'Formularios enviados',
      'pt': 'Formulários enviados',
    },
    'w2hq69gc': {
      'en': 'Your project status is appearing here.',
      'es': 'El estado de su proyecto aparece aquí.',
      'pt': 'O status do seu projeto está aparecendo aqui.',
    },
    '0c9inxgt': {
      'en': 'Registration ',
      'es': 'Registro',
      'pt': 'Cadastro',
    },
    'hjvtbyco': {
      'en': '23%',
      'es': '23%',
      'pt': '23%',
    },
    'otz0vob7': {
      'en': 'Product Request',
      'es': 'Solicitud de producto',
      'pt': 'Solicitação de produto',
    },
    'erp0sqt3': {
      'en': '93%',
      'es': '93%',
      'pt': '93%',
    },
    '4m0oih04': {
      'en': 'Registration Completed',
      'es': 'Registro completado',
      'pt': 'Registro Concluído',
    },
    'hrmev6wh': {
      'en': 'Active Users',
      'es': 'Usuarios activos',
      'pt': 'Usuários ativos',
    },
    'sxo2ybnd': {
      'en': 'A small summary of your users base',
      'es': 'Un pequeño resumen de su base de usuarios',
      'pt': 'Um pequeno resumo da sua base de usuários',
    },
    '9gfqqi4v': {
      'en': 'Total User Count',
      'es': 'Recuento total de usuarios',
      'pt': 'Contagem total de usuários',
    },
    '3r37uqmf': {
      'en': 'An overview of all your users on your platform.',
      'es': 'Una visión general de todos sus usuarios en su plataforma.',
      'pt': 'Uma visão geral de todos os seus usuários em sua plataforma.',
    },
    '12zaocpp': {
      'en': '56.4k',
      'es': '56.4k',
      'pt': '56,4k',
    },
    'uxznfibh': {
      'en': 'Active Users',
      'es': 'Usuarios activos',
      'pt': 'Usuários ativos',
    },
    'tq71iaxz': {
      'en': 'A small summary of your users base',
      'es': 'Un pequeño resumen de su base de usuarios',
      'pt': 'Um pequeno resumo da sua base de usuários',
    },
    '6kuf9jh6': {
      'en': 'Total User Count',
      'es': 'Recuento total de usuarios',
      'pt': 'Contagem total de usuários',
    },
    'a3ps4mfe': {
      'en': 'An overview of all your users on your platform.',
      'es': 'Una visión general de todos sus usuarios en su plataforma.',
      'pt': 'Uma visão geral de todos os seus usuários em sua plataforma.',
    },
    'jchkcfkj': {
      'en': '56.4k',
      'es': '56.4k',
      'pt': '56,4k',
    },
    'v2sfsyj8': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'ny996leo': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'by5wsek2': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'z5dg0tjq': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'ae0gyxt3': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    'bbpb1056': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    'cp5b443z': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    'gndvtr0k': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'ff1hprkt': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'oxiii8hv': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    'oy038ih1': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '61u6nbq6': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '3vuou6xq': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    '7iyalesx': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    '4vrxfe15': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'h8n508oc': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '4eot1ufl': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // profileCommercial
  {
    'jrqqikgd': {
      'en': 'Board Members ',
      'es': 'Miembros de la Junta',
      'pt': 'Membros do Conselho',
    },
    'lojev7ly': {
      'en': 'Add Member',
      'es': 'Añadir miembro',
      'pt': 'Adicionar membro',
    },
    'vp8fjrez': {
      'en': 'hereby designate as Beneficiaries the following persons:',
      'es': 'designan como Beneficiarios a las siguientes personas:',
      'pt': 'designar como Beneficiários as seguintes pessoas:',
    },
    '9lymap7n': {
      'en': 'Member',
      'es': 'Miembro',
      'pt': 'Membro',
    },
    'f9jjnjj5': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'mmpgw8xs': {
      'en': 'Chairman',
      'es': 'Presidente',
      'pt': 'Presidente',
    },
    'we77lwrn': {
      'en': 'PROFILE',
      'es': 'PERFIL',
      'pt': 'PERFIL',
    },
    'pigcryc0': {
      'en': 'Here you can edit the profile that you created for this app',
      'es': 'Aquí puede editar el perfil que creó para esta aplicación',
      'pt': 'Aqui você pode editar o perfil que criou para este aplicativo',
    },
    'zilpx5kt': {
      'en': 'Photo Profile',
      'es': 'Foto de perfil',
      'pt': 'Perfil da foto',
    },
    'ayln0lc3': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'g5173u5c': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    '68rgm1og': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'j16hfmxg': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '4ukfh40c': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'y7gk1x4w': {
      'en': 'Reset your Password',
      'es': 'Restablecer su contraseña',
      'pt': 'Redefina sua senha',
    },
    '5grldf1v': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'r3f5kgvh': {
      'en': 'GENERAL INFORMATION',
      'es': 'INFORMACIÓN GENERAL',
      'pt': 'INFORMAÇÕES GERAIS',
    },
    't3m3k8t5': {
      'en': 'Incomplete profile',
      'es': 'perfil incompleto',
      'pt': 'perfil incompleto',
    },
    'qys23ixj': {
      'en': 'Complete your Onboarding Process',
      'es': 'Complete su proceso de incorporación',
      'pt': 'Conclua seu processo de integração',
    },
    'p3lugyyk': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'roewesao': {
      'en': 'Legal Name',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'xriiopia': {
      'en': 'Legal Name',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'de8dkbja': {
      'en': 'Commercial Name',
      'es': 'Nombre comercial',
      'pt': 'Nome comercial',
    },
    'myz4bzjf': {
      'en': 'Commercial Name',
      'es': 'Nombre comercial',
      'pt': 'Nome comercial',
    },
    'xxxp6u7n': {
      'en': 'Incorporation Number',
      'es': 'Número de incorporación',
      'pt': 'Número de Incorporação',
    },
    '1pw84p9p': {
      'en': 'Incorporation Number',
      'es': 'Número de incorporación',
      'pt': 'Número de Incorporação',
    },
    'r1eseiaz': {
      'en': 'Date of Incorporation',
      'es': 'Fecha de incorporación',
      'pt': 'Data de incorporação',
    },
    '9y5yccbr': {
      'en': 'Jurisdiction',
      'es': 'Jurisdicción',
      'pt': 'Jurisdição',
    },
    'dww5inns': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    'n6j42s4r': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'thecyy92': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    '4mc3whyf': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    'jjbc5y10': {
      'en': 'Country of Operatio',
      'es': 'País de operación',
      'pt': 'País de operação',
    },
    '2s95bpxn': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '6cc483m9': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    '4i4q07j4': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '2tcz68hz': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'e00mggm3': {
      'en': 'Country of Operatio',
      'es': 'País de operación',
      'pt': 'País de operação',
    },
    'hmjerb8t': {
      'en': 'Date of Commencement of Operations',
      'es': 'Fecha de Inicio de Operaciones',
      'pt': 'Data de Início das Operações',
    },
    'j624m6js': {
      'en': 'Economic Activity (Industry) ',
      'es': 'Actividad Económica (Industria)',
      'pt': 'Atividade Econômica (Indústria)',
    },
    'ylcbdos0': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'nni2jnys': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'kpplqs8j': {
      'en': 'Resident Agent ',
      'es': 'Agente residente',
      'pt': 'Agente Residente',
    },
    's3qm7ddq': {
      'en': '(if applicable)',
      'es': '(si es aplicable)',
      'pt': '(se aplicável)',
    },
    'i7g4rtt7': {
      'en': 'Expiration of Articles of Incorporation',
      'es': 'Expiración de los Artículos de Incorporación',
      'pt': 'Expiração do Contrato Social',
    },
    'qx1bun1h': {
      'en': 'Perpetual ',
      'es': 'Perpetuo',
      'pt': 'Perpétuo',
    },
    'mz37w8ai': {
      'en': 'Defined Date',
      'es': 'Fecha definida',
      'pt': 'Data Definida',
    },
    'o5zxs612': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    'rdp7fzrs': {
      'en': 'Assets, Revenues and Equity',
      'es': 'Activos, Ingresos y Patrimonio',
      'pt': 'Ativos, Receitas e Patrimônio',
    },
    '1j158m2x': {
      'en': 'Annual Revenues',
      'es': 'Ingresos anuales',
      'pt': 'Renda Anual',
    },
    'odmw7m7s': {
      'en': 'Annual Revenues',
      'es': 'Ingresos anuales',
      'pt': 'Renda Anual',
    },
    'f2latyzd': {
      'en': 'Annual Expenses',
      'es': 'Gastos Anuales',
      'pt': 'Despesas Anuais',
    },
    '78nk6q1o': {
      'en': 'Annual Expenses',
      'es': 'Gastos Anuales',
      'pt': 'Despesas Anuais',
    },
    'w10lxsln': {
      'en': 'Estimated Equity',
      'es': 'Patrimonio estimado',
      'pt': 'Patrimônio líquido estimado',
    },
    'hjhyxp07': {
      'en': 'Estimated Equity',
      'es': 'Patrimonio estimado',
      'pt': 'Patrimônio líquido estimado',
    },
    'yq9qummp': {
      'en': 'Total Asset',
      'es': 'Activos totales',
      'pt': 'Ativo total',
    },
    'x8xas5wm': {
      'en': 'Total Asset',
      'es': 'Activos totales',
      'pt': 'Ativo total',
    },
    '4s5pzsoj': {
      'en': 'Total Employees',
      'es': 'Empleados Totales',
      'pt': 'Total de Funcionários',
    },
    'lypbgmmb': {
      'en': 'Total Employees',
      'es': 'Empleados Totales',
      'pt': 'Total de Funcionários',
    },
    'cdmzhx1t': {
      'en': 'Referred By',
      'es': 'Referido por',
      'pt': 'Referido por',
    },
    'izunkxvc': {
      'en': '',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    'nripgcet': {
      'en': 'Referred By',
      'es': 'Referido por',
      'pt': 'Referido por',
    },
    '4wtjlhrf': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'm36gmi8g': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'buwu8dok': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    '4rc01qxq': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'sma5jz9c': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'cau6lwya': {
      'en': 'Country ',
      'es': 'País',
      'pt': 'País',
    },
    '51cpp78b': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    'ogzncwtp': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    '1en8nce9': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    'duba9ubs': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    'x1y0zh1i': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'o4xx9pyt': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    'h44pgtkf': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    '31owkv64': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'kbba23u2': {
      'en': 'Building Name, Othe',
      'es': 'Nombre del edificio, Otro',
      'pt': 'Nome do Edifício, Outro',
    },
    '9fs9h9o7': {
      'en': 'Building Name, Othe',
      'es': 'Nombre del edificio, Otro',
      'pt': 'Nome do Edifício, Outro',
    },
    'sugvrw73': {
      'en': 'Website',
      'es': 'Sitio web',
      'pt': 'Local na rede Internet',
    },
    'qn8mxmjj': {
      'en': 'Website',
      'es': 'Sitio web',
      'pt': 'Local na rede Internet',
    },
    '24rqdxx7': {
      'en': 'Mailing Address',
      'es': 'Dirección de envio',
      'pt': 'Endereço para correspondência',
    },
    'yyz6b051': {
      'en': 'Mailing Address',
      'es': 'Dirección de envio',
      'pt': 'Endereço para correspondência',
    },
    '80liatds': {
      'en': 'Create ',
      'es': 'Crear',
      'pt': 'Criar',
    },
    'iu3orr10': {
      'en': 'GENERAL INFORMATION',
      'es': 'INFORMACIÓN GENERAL',
      'pt': 'INFORMAÇÕES GERAIS',
    },
    'w14sly1v': {
      'en': 'Complete your Onboarding Process',
      'es': 'Complete su proceso de incorporación',
      'pt': 'Conclua seu processo de integração',
    },
    'q6thbirg': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'h42el7yb': {
      'en': 'Legal Name',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'fv984gx1': {
      'en': 'Legal Name',
      'es': 'Nombre legal',
      'pt': 'Nome legal',
    },
    'mzuutd11': {
      'en': 'Commercial Name',
      'es': 'Nombre comercial',
      'pt': 'Nome comercial',
    },
    'f9epnjii': {
      'en': 'Commercial Name',
      'es': 'Nombre comercial',
      'pt': 'Nome comercial',
    },
    'j9w4empq': {
      'en': 'Incorporation Number',
      'es': 'Número de incorporación',
      'pt': 'Número de Incorporação',
    },
    'eex4rqve': {
      'en': 'Incorporation Number',
      'es': 'Número de incorporación',
      'pt': 'Número de Incorporação',
    },
    'nsrwf0dm': {
      'en': 'Date of Incorporation',
      'es': 'Fecha de incorporación',
      'pt': 'Data de incorporação',
    },
    'smeyy1b3': {
      'en': 'Jurisdiction',
      'es': 'Jurisdicción',
      'pt': 'Jurisdição',
    },
    '57c2sy1s': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    'n1bfvndi': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'wouew45t': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'u2qop52x': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    '4wodhikk': {
      'en': 'Country of Operatio',
      'es': 'País de operación',
      'pt': 'País de operação',
    },
    'l6fk8lde': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'l3hqdryw': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    '563hya73': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'uzby5n35': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    '6kyrstcw': {
      'en': 'Country of Operatio',
      'es': 'País de operación',
      'pt': 'País de operação',
    },
    '4di39t18': {
      'en': 'Date of Commencement of Operations',
      'es': 'Fecha de Inicio de Operaciones',
      'pt': 'Data de Início das Operações',
    },
    '7cucfkyr': {
      'en': 'Economic Activity (Industry) ',
      'es': 'Actividad Económica (Industria)',
      'pt': 'Atividade Econômica (Indústria)',
    },
    '56qiwu8j': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'st6itmhw': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    '9f50ccvs': {
      'en': 'Resident Agent ',
      'es': 'Agente residente',
      'pt': 'Agente Residente',
    },
    'xlr2tayt': {
      'en': '(if applicable)',
      'es': '(si es aplicable)',
      'pt': '(se aplicável)',
    },
    '962i81k1': {
      'en': 'Expiration of Articles of Incorporation',
      'es': 'Expiración de los Artículos de Incorporación',
      'pt': 'Expiração do Contrato Social',
    },
    'c2jxml9e': {
      'en': 'Perpetual ',
      'es': 'Perpetuo',
      'pt': 'Perpétuo',
    },
    '024l8z9u': {
      'en': 'Defined Date',
      'es': 'Fecha definida',
      'pt': 'Data Definida',
    },
    'jpskmjv8': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    'mu80krvm': {
      'en': 'Assets, Revenues and Equity',
      'es': 'Activos, Ingresos y Patrimonio',
      'pt': 'Ativos, Receitas e Patrimônio',
    },
    'fcg4mpks': {
      'en': 'Annual Revenues',
      'es': 'Ingresos anuales',
      'pt': 'Renda Anual',
    },
    'imhkk1bc': {
      'en': 'Annual Revenues',
      'es': 'Ingresos anuales',
      'pt': 'Renda Anual',
    },
    'shtnbw6q': {
      'en': 'Annual Expenses',
      'es': 'Gastos Anuales',
      'pt': 'Despesas Anuais',
    },
    'w7wsb10f': {
      'en': 'Annual Expenses',
      'es': 'Gastos Anuales',
      'pt': 'Despesas Anuais',
    },
    'l2z7mmzu': {
      'en': 'Estimated Equity',
      'es': 'Patrimonio estimado',
      'pt': 'Patrimônio líquido estimado',
    },
    'iwe5911f': {
      'en': 'Estimated Equity',
      'es': 'Patrimonio estimado',
      'pt': 'Patrimônio líquido estimado',
    },
    'g109k8uq': {
      'en': 'Total Asset',
      'es': 'Activos totales',
      'pt': 'Ativo total',
    },
    'j9b3tu8k': {
      'en': 'Total Asset',
      'es': 'Activos totales',
      'pt': 'Ativo total',
    },
    'g1g4hvfp': {
      'en': 'Total Employees',
      'es': 'Empleados Totales',
      'pt': 'Total de Funcionários',
    },
    'lpbtzx08': {
      'en': 'Total Employees',
      'es': 'Empleados Totales',
      'pt': 'Total de Funcionários',
    },
    'oorbvfl5': {
      'en': 'Referred By',
      'es': 'Referido por',
      'pt': 'Referido por',
    },
    'qs23x9ab': {
      'en': '',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    '7dxm85ts': {
      'en': 'Referred By',
      'es': 'Referido por',
      'pt': 'Referido por',
    },
    'pfb9tmof': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'vodun00d': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '5bu9yvhh': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'todx2d7d': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'z0xe0uix': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    '0oh9ealc': {
      'en': 'Country ',
      'es': 'País',
      'pt': 'País',
    },
    '8n0mdukj': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    '2c1qir8q': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'bzkkgimw': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    '42soc906': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    '70stwp0o': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'keay2q56': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    '9jbyl39o': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    '32c6uhxo': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'jrn7ekjm': {
      'en': 'Building Name, Othe',
      'es': 'Nombre del edificio, Otro',
      'pt': 'Nome do Edifício, Outro',
    },
    'acy1bzig': {
      'en': 'Building Name, Othe',
      'es': 'Nombre del edificio, Otro',
      'pt': 'Nome do Edifício, Outro',
    },
    'e9btsqjh': {
      'en': 'Website',
      'es': 'Sitio web',
      'pt': 'Local na rede Internet',
    },
    '0r7cs1xu': {
      'en': 'Website',
      'es': 'Sitio web',
      'pt': 'Local na rede Internet',
    },
    'j2hp096w': {
      'en': 'Mailing Address',
      'es': 'Dirección de envio',
      'pt': 'Endereço para correspondência',
    },
    'gioptdor': {
      'en': 'Mailing Address',
      'es': 'Dirección de envio',
      'pt': 'Endereço para correspondência',
    },
    'bjgk1qlx': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'irsdrchh': {
      'en': 'REFERENCES',
      'es': 'REFERENCIAS',
      'pt': 'REFERÊNCIAS',
    },
    'mg3y7mt5': {
      'en': 'Incomplete Commercial Reference',
      'es': 'Referencia comercial incompleta',
      'pt': 'Referência Comercial Incompleta',
    },
    'fe4x6fak': {
      'en': 'Incomplete Bank Reference',
      'es': 'Referencia bancaria incompleta',
      'pt': 'Referência do banco incompleta',
    },
    'tyvm041v': {
      'en': 'Add in this section your bank and commercial references',
      'es': 'Añade en esta sección tus referencias bancarias y comerciales',
      'pt': 'Adicione nesta secção as suas referências bancárias e comerciais',
    },
    'csyoan7n': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    '5xdgfde2': {
      'en': 'Add your bank reference',
      'es': 'Añade tu referencia bancaria',
      'pt': 'Adicione a sua referência bancária',
    },
    'o7qs8x0j': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar Referência',
    },
    'dw3sgtid': {
      'en': 'BANK NAME',
      'es': 'NOMBRE DEL BANCO',
      'pt': 'NOME DO BANCO',
    },
    'ronnhmtj': {
      'en': 'ADDRESS',
      'es': 'DIRECCIÓN',
      'pt': 'ENDEREÇO',
    },
    '2r9avk5b': {
      'en': 'ACCOUNT TYPE',
      'es': 'TIPO DE CUENTA',
      'pt': 'TIPO DE CONTA',
    },
    '1exmmf4x': {
      'en': 'CONTACT ',
      'es': 'CONTACTO',
      'pt': 'CONTATO',
    },
    'et6evbry': {
      'en': 'Comercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    '2xp4wrh1': {
      'en': 'Add your Comercial Reference',
      'es': 'Agrega tu Referencia Comercial',
      'pt': 'Adicione a sua Referência Comercial',
    },
    'j5m61n27': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar Referência',
    },
    't8aphfur': {
      'en': 'COMPANY NAME',
      'es': 'NOMBRE DE EMPRESA',
      'pt': 'NOME DA EMPRESA',
    },
    'dx42xy39': {
      'en': 'ADDRESS ',
      'es': 'DIRECCIÓN',
      'pt': 'ENDEREÇO',
    },
    'z35wl4nt': {
      'en': 'TYPE OF RELATIONSHIP',
      'es': 'TIPO DE RELACIÓN',
      'pt': 'TIPO DE RELACIONAMENTO',
    },
    'g1kjhxd2': {
      'en': 'CONTACT',
      'es': 'CONTACTO',
      'pt': 'CONTATO',
    },
    '6zoogrs3': {
      'en': 'BENEFICIARY DESIGNATION',
      'es': 'DESIGNACIÓN BENEFICIARIA',
      'pt': 'DESIGNAÇÃO DO BENEFICIÁRIO',
    },
    'iqnl4jen': {
      'en': 'Add Alternative Beneficiary',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    'rulx19m8': {
      'en': 'Add  Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'm38og0nl': {
      'en': 'Beneficiary List',
      'es': 'Lista de beneficiarios',
      'pt': 'Lista de Beneficiários',
    },
    '1twwoz08': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'nfc6r6c7': {
      'en': 'hereby designate as Beneficiaries the following persons:',
      'es': 'designan como Beneficiarios a las siguientes personas:',
      'pt': 'designar como Beneficiários as seguintes pessoas:',
    },
    'bxlrzlkp': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'cnv05nj4': {
      'en': 'Beneficiary Information',
      'es': 'información de beneficiario',
      'pt': 'Informação do Beneficiário',
    },
    'au99x3eo': {
      'en': 'Assigned Percentage ',
      'es': 'Porcentaje asignado',
      'pt': 'Porcentagem Atribuída',
    },
    'vo5ma1o8': {
      'en': 'I declare the following:',
      'es': 'Declaro lo siguiente:',
      'pt': 'Declaro o seguinte:',
    },
    '4u1bci5o': {
      'en':
          '1. As of the date of this notification, I have not appointed third persons other than the listed Beneficiaries as heirs or legatees of this account.\n2. At the time of my death, provided that there is no restricted tax or precautionary measure on the account, the balance of the account will be delivered to\nthe beneficiary (ies) in the percentage assignations mentioned above.\n3. In case any of the beneficiaries are minors or have been declared legally incapacitated, the distribution of the amount assigned to that person will be\nmade to their guardian, as the case may be.\n4. In the event that on the date of my death, any of the listed beneficiaries are deceased, and I did not request the Bank to remove them as such, the amount\nassigned to that person will be distributed to: ',
      'es':
          '1. A la fecha de esta notificación, no he designado como herederos o legatarios de esta cuenta a terceros distintos de los Beneficiarios indicados.\n2. Al momento de mi muerte, siempre que no exista impuesto restringido o medida cautelar en la cuenta, el saldo de la cuenta será entregado a\nel (los) beneficiario(s) en las asignaciones porcentuales antes mencionadas.\n3. En caso de que alguno de los beneficiarios sea menor de edad o haya sido declarado incapacitado legalmente, la distribución de la cantidad asignada a esa persona se\nhecho a su tutor, según el caso.\n4. En caso de que a la fecha de mi fallecimiento, alguno de los beneficiarios señalados haya fallecido, y no solicité al Banco su baja como tal, la cantidad\nasignada a esa persona se distribuirá a:',
      'pt':
          '1. Até a data desta notificação, não nomeei terceiros que não os Beneficiários listados como herdeiros ou legatários desta conta.\n2. No momento da minha morte, desde que não haja restrição fiscal ou medida cautelar na conta, o saldo da conta será entregue a\no(s) beneficiário(s) nas atribuições percentuais acima mencionadas.\n3. Caso algum dos beneficiários seja menor de idade ou tenha sido declarado incapaz, a distribuição do valor atribuído a essa pessoa será\nao seu responsável, conforme o caso.\n4. Caso na data do meu falecimento algum dos beneficiários listados seja falecido e eu não tenha solicitado ao Banco a sua remoção como tal, o montante\natribuído a essa pessoa será distribuído para:',
    },
    '0zd5n385': {
      'en': ' Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'g1jqv8zn': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'r1qxiyxz': {
      'en': 'ID No. ',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    '8g93zle6': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'kjo8wxd3': {
      'en': 'Birthdate',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    'ex1db23l': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'r4cnjysh': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'te8qdlny': {
      'en': 'Phone No',
      'es': 'Telefono no',
      'pt': 'Telefone não',
    },
    '4ffiq958': {
      'en': 'Phone No',
      'es': 'Telefono no',
      'pt': 'Telefone não',
    },
    '477gt1yv': {
      'en': 'Email ',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'c9gso0zz': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'z8mafkq8': {
      'en': 'Save',
      'es': 'Ahorrar',
      'pt': 'Salvar',
    },
    'id5yitsv': {
      'en': 'DOCUMENTS/FILES',
      'es': 'DOCUMENTOS/ARCHIVOS',
      'pt': 'DOCUMENTOS/ARQUIVOS',
    },
    '0i26s055': {
      'en': 'Upload Invoice for payment of services',
      'es': 'Subir Factura por pago de servicios',
      'pt': 'Carregar Fatura para pagamento de serviços',
    },
    '1vpazpy3': {
      'en': 'Upload  Proof of Payment',
      'es': 'Subir comprobante de pago',
      'pt': 'Carregar comprovante de pagamento',
    },
    'j4k8kw7f': {
      'en': 'Upload your Passport',
      'es': 'Sube tu Pasaporte',
      'pt': 'Carregue seu Passaporte',
    },
    'boy8zl3r': {
      'en': 'Upload your Local ID',
      'es': 'Cargue su identificación local',
      'pt': 'Carregue seu ID local',
    },
    't80sn0oa': {
      'en':
          'Here you can attach your personal documents such as identity card, passport and proof of income',
      'es':
          'Aquí puede adjuntar sus documentos personales como cédula de identidad, pasaporte y comprobante de ingresos',
      'pt':
          'Aqui você pode anexar seus documentos pessoais como carteira de identidade, passaporte e comprovante de renda',
    },
    'gsm78muy': {
      'en': '1.  Business License',
      'es': '1. Licencia Comercial',
      'pt': '1. Licença Comercial',
    },
    'm9j92bkp': {
      'en': '2. Operating Agreement',
      'es': '2. Acuerdo Operativo',
      'pt': '2. Acordo Operacional',
    },
    'eb19ojt8': {
      'en': '3. Ownership Agreements',
      'es': '3. Acuerdos de propiedad',
      'pt': '3. Contratos de propriedade',
    },
    '9lvnh24v': {
      'en': '4. Business Plan',
      'es': '4. Plan de negocios',
      'pt': '4. Plano de Negócios',
    },
    'ujl5rk0u': {
      'en': '5 Financial Statements',
      'es': '5 Estados Financieros',
      'pt': '5 Demonstrações Financeiras',
    },
    '91bki6w5': {
      'en': '6.  Invoice for payment of services ',
      'es': '6. Factura de pago de servicios',
      'pt': '6. Fatura de pagamento de serviços',
    },
    '7o0xujqx': {
      'en': 'Profile record',
      'es': 'Registro de perfil',
      'pt': 'registro de perfil',
    },
    'qm2jn3dy': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'ypersk5k': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'hh3ulbb4': {
      'en': 'General Information',
      'es': 'Información general',
      'pt': 'Informações gerais',
    },
    'x57m3yq6': {
      'en':
          'Complete the information requested in the general information section',
      'es':
          'Complete la información solicitada en la sección de información general',
      'pt':
          'Preencha as informações solicitadas na seção de informações gerais',
    },
    'ryehw65y': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    'n91kgsp5': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tengas',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'qd3ce3v4': {
      'en': 'Commercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    'kn88vc5g': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tienes',
      'pt': 'Adicione as referências bancárias que possui',
    },
    '735jvc1c': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    't7xave1m': {
      'en':
          'adds the beneficiary or beneficiaries of your accounts in the event of your death.',
      'es':
          'agrega el beneficiario o beneficiarios de sus cuentas en caso de su muerte.',
      'pt':
          'adiciona o beneficiário ou beneficiários de suas contas no caso de sua morte.',
    },
    'z9m5yckx': {
      'en': 'Add Alternative Beneficiary ',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    'g978mraf': {
      'en': 'Add the beneficiary in the event of the death of your beneficiary',
      'es':
          'Añadir el beneficiario en caso de fallecimiento de su beneficiario',
      'pt':
          'Adicione o beneficiário em caso de falecimento do seu beneficiário',
    },
    'pczhpjmk': {
      'en': 'add signature',
      'es': 'agregar firma',
      'pt': 'adicionar assinatura',
    },
    'sesomawk': {
      'en': 'add your signature as close as possible to your identity document',
      'es':
          'agregue su firma lo más cerca posible de su documento de identidad',
      'pt':
          'adicione sua assinatura o mais próximo possível do seu documento de identidade',
    },
    'cabgd2xl': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // homeCommercial
  {
    '6xx1bswp': {
      'en': 'Commercial Bank',
      'es': 'Banco Comercial',
      'pt': 'Banco Comercial',
    },
    'oadnv0rv': {
      'en':
          'Welcome to our commercial bank onboarding, from here you can request our main products',
      'es':
          'Bienvenido a nuestra incorporación a la banca comercial, desde aquí puede solicitar nuestros principales productos',
      'pt':
          'Bem-vindo ao nosso onboarding de banco comercial, aqui você pode solicitar nossos principais produtos',
    },
    '5llr0a31': {
      'en': 'Hi, ',
      'es': 'Hola,',
      'pt': 'Oi,',
    },
    'fk3cjcs8': {
      'en': 'these are the products we have for you:',
      'es': 'Estos son los productos que tenemos para ti:',
      'pt': 'estes são os produtos que temos para si:',
    },
    'q8y3zft8': {
      'en': 'Commercial Account',
      'es': 'Cuenta Comercial',
      'pt': 'Conta Comercial',
    },
    'tcyx9q9y': {
      'en':
          'from here you can request a commercial account by filling out all the fields of the forms and providing the requested documentation.',
      'es':
          'desde aquí puede solicitar una cuenta comercial rellenando todos los campos de los formularios y aportando la documentación solicitada.',
      'pt':
          'a partir daqui pode solicitar uma conta comercial preenchendo todos os campos dos formulários e fornecendo a documentação solicitada.',
    },
    'crt40ic1': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    'lopjpddc': {
      'en': 'Continue ',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    '20m94z4z': {
      'en': 'Visa Debit',
      'es': 'Tarjeta de débito Visa',
      'pt': 'Débito Visa',
    },
    '8js9zo63': {
      'en': 'request your debit visa and enjoy the ease of our service.',
      'es':
          'solicita tu visa de débito y disfruta de la facilidad de nuestro servicio.',
      'pt':
          'solicite seu visto de débito e usufrua da facilidade de nosso atendimento.',
    },
    'y8fztxh2': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    'a73zqfwf': {
      'en': 'Online Banking',
      'es': 'Banca en línea',
      'pt': 'Acesso a operações bancárias via Internet',
    },
    'ajjyvkv0': {
      'en': 'request access to your online banking.',
      'es': 'solicitar acceso a su banca en línea.',
      'pt': 'solicitar acesso ao seu banco on-line.',
    },
    'utdosxzx': {
      'en': 'New Request',
      'es': 'Nueva solicitud',
      'pt': 'Novo pedido',
    },
    'v01bub6n': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    'c2sl9glm': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    '5crtm6ph': {
      'en': 'Request list',
      'es': 'Lista de solicitudes',
      'pt': 'lista de pedidos',
    },
    '95m21rw5': {
      'en': 'Here you can see the requested products and download them.',
      'es': 'Aquí puede ver los productos solicitados y descargarlos.',
      'pt': 'Aqui você pode ver os produtos solicitados e baixá-los.',
    },
    'y1utbht5': {
      'en': 'Products',
      'es': 'productos',
      'pt': 'Produtos',
    },
    'fktu8m4j': {
      'en': 'Type',
      'es': 'Tipo',
      'pt': 'Tipo',
    },
    '39gokwsl': {
      'en': 'Category',
      'es': 'Categoría',
      'pt': 'Categoria',
    },
    's42l2nyu': {
      'en': 'Created At',
      'es': 'Creado en',
      'pt': 'Criado em',
    },
    'bj7tr710': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    'jk7c5iev': {
      'en': 'Action',
      'es': 'Acción',
      'pt': 'Ação',
    },
    '37h40gvg': {
      'en': '',
      'es': '',
      'pt': '',
    },
    't4g0xb66': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
    'nm0jhfa8': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'iznkdtpb': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'olh68sss': {
      'en': 'General Information',
      'es': 'Información general',
      'pt': 'Informações gerais',
    },
    'iomw26oc': {
      'en':
          'Complete the information requested in the general information section',
      'es':
          'Complete la información solicitada en la sección de información general',
      'pt':
          'Preencha as informações solicitadas na seção de informações gerais',
    },
    '2ifuwifo': {
      'en': 'Bank Reference',
      'es': 'Referencia bancaria',
      'pt': 'Referência bancária',
    },
    'q7rkkuob': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tengas',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'hcpvfqug': {
      'en': 'Commercial Reference',
      'es': 'Referencia Comercial',
      'pt': 'Referência Comercial',
    },
    'nuxsaa8t': {
      'en': 'Add the bank references you have',
      'es': 'Añade las referencias bancarias que tienes',
      'pt': 'Adicione as referências bancárias que possui',
    },
    'ml4lfskk': {
      'en': 'Add Beneficiary',
      'es': 'Añadir Beneficiario',
      'pt': 'Adicionar Beneficiário',
    },
    'vea683v2': {
      'en':
          'adds the beneficiary or beneficiaries of your accounts in the event of your death.',
      'es':
          'agrega el beneficiario o beneficiarios de sus cuentas en caso de su muerte.',
      'pt':
          'adiciona o beneficiário ou beneficiários de suas contas no caso de sua morte.',
    },
    'n2w0e35l': {
      'en': 'Add Alternative Beneficiary ',
      'es': 'Añadir Beneficiario Alternativo',
      'pt': 'Adicionar Beneficiário Alternativo',
    },
    '06aj5xid': {
      'en': 'Add the beneficiary in the event of the death of your beneficiary',
      'es':
          'Añadir el beneficiario en caso de fallecimiento de su beneficiario',
      'pt':
          'Adicione o beneficiário em caso de falecimento do seu beneficiário',
    },
    'vb8modiu': {
      'en': 'add signature',
      'es': 'agregar firma',
      'pt': 'adicionar assinatura',
    },
    'dwbq6ehv': {
      'en': 'add your signature as close as possible to your identity document',
      'es':
          'agregue su firma lo más cerca posible de su documento de identidad',
      'pt':
          'adicione sua assinatura o mais próximo possível do seu documento de identidade',
    },
    '9gdmrkln': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // emailVerify
  {
    '96h560k5': {
      'en': 'Verify your email !',
      'es': 'Verifica tu correo electrónico !',
      'pt': 'Verifique seu e-mail !',
    },
    'zwcf4g6a': {
      'en': 'We have sent a verification link to:  ',
      'es': 'Hemos enviado un enlace de verificación a:',
      'pt': 'Enviamos um link de verificação para:',
    },
    '8e8nhl42': {
      'en': ', enter your email and touch the verification link.',
      'es': ', ingresa tu correo electrónico y toca el enlace de verificación.',
      'pt': ', digite seu e-mail e toque no link de verificação.',
    },
    'cywsv5d7': {
      'en': 'Resend e-mail',
      'es': 'Reenviar email',
      'pt': 'Reenviar email',
    },
    'c2aqk0d5': {
      'en': 'Log In',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'tigfa9pd': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // emailVerifyAdmin
  {
    'h1b9emxp': {
      'en': 'Role Approved',
      'es': 'Rol aprobado',
      'pt': 'Função Aprovada',
    },
    'irle4e6a': {
      'en': 'Verify your email !',
      'es': 'Verifica tu correo electrónico !',
      'pt': 'Verifique seu e-mail !',
    },
    '3gq54m4r': {
      'en': 'We have sent a verification link to:  ',
      'es': 'Hemos enviado un enlace de verificación a:',
      'pt': 'Enviamos um link de verificação para:',
    },
    'ilcttf19': {
      'en': ', enter your email and touch the verification link.',
      'es': ', ingresa tu correo electrónico y toca el enlace de verificación.',
      'pt': ', digite seu e-mail e toque no link de verificação.',
    },
    'hce6c91c': {
      'en': 'Resend e-mail',
      'es': 'Reenviar email',
      'pt': 'Reenviar email',
    },
    'tu88q3yy': {
      'en': 'Log In',
      'es': 'Acceso',
      'pt': 'Conecte-se',
    },
    'qrgekfo6': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // applicationFormPersonal
  {
    'ealk9j6o': {
      'en': 'Bank Forms',
      'es': 'Descripción general',
      'pt': 'Visão geral',
    },
    'cgafjhiv': {
      'en': 'Here you can see the official forms that have been filled out',
      'es': 'Encontrará sus opciones de cotización a continuación.',
      'pt': 'Você encontrará suas opções de cotação abaixo.',
    },
    'b70e9a4w': {
      'en': 'FORM001',
      'es': '323',
      'pt': '323',
    },
    'zbyn63ci': {
      'en': 'INDIVIDUAL CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'd925fxpk': {
      'en': 'FORM002',
      'es': '323',
      'pt': '323',
    },
    '8vv8d5i3': {
      'en': 'CORPORATE CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'mdbbzpo0': {
      'en': 'FORM003',
      'es': '323',
      'pt': '323',
    },
    'tzyh31cw': {
      'en': 'ACCOUNT OPENING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'lolioi9y': {
      'en': 'FORM004',
      'es': '323',
      'pt': '323',
    },
    '1b24soht': {
      'en': 'SIGNATURE CARD',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'jnfz0gej': {
      'en': 'FORM006',
      'es': '323',
      'pt': '323',
    },
    '6xoc8xz7': {
      'en': 'BENEFICIARY DESIGNATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'am35g4s7': {
      'en': 'FORM007',
      'es': '323',
      'pt': '323',
    },
    '92jr86z5': {
      'en': 'MINUTES OF BOARD OF DIRECTORS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '9tctc1jr': {
      'en': 'FORM008',
      'es': '323',
      'pt': '323',
    },
    '4ii3iyhb': {
      'en': 'BENEFICIAL OWNER CERTIFICATION ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '0j69i5qe': {
      'en': 'FORM009',
      'es': '323',
      'pt': '323',
    },
    'kyszc0el': {
      'en': 'AUTHORIZATION FOR ELECTRONIC COMMUNICATIONS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'tx2wfg15': {
      'en': 'FORMCORP',
      'es': '323',
      'pt': '323',
    },
    '36dnih43': {
      'en': 'CORPORATE ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'cbi2toyi': {
      'en': 'FORMPERSONAL',
      'es': '323',
      'pt': '323',
    },
    'o0en2kq9': {
      'en': 'PERSONAL ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'n3pdofu3': {
      'en': 'FORM013',
      'es': '323',
      'pt': '323',
    },
    'mg6a9dxq': {
      'en': 'VISA DEBIT CARD APPLICATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '6tt23j6s': {
      'en': 'FORM-W-8BEN',
      'es': '323',
      'pt': '323',
    },
    'unmwz1fz': {
      'en':
          'Certificate of Foreign Status of Beneficial Owner for US Tax Withholding and Reporting (Individuals) ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'ofqo36bz': {
      'en': 'FORM-W-9',
      'es': '323',
      'pt': '323',
    },
    'd8bwcicl': {
      'en': 'Request for Taxpayer\nIdentification Number and Certification',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'y5z4hvxb': {
      'en': 'FORM-W-8BEN-E',
      'es': '323',
      'pt': '323',
    },
    '1xvwj9y6': {
      'en':
          'Certificate of Status of Beneficial Owner for\nUnited States Tax Withholding and Reporting',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'ac9r5df5': {
      'en': 'General User Information',
      'es': 'Formularios enviados',
      'pt': 'Formulários enviados',
    },
    '0lh4ssf4': {
      'en': 'Here is general information about this user.',
      'es': 'El estado de su proyecto aparece aquí.',
      'pt': 'O status do seu projeto está aparecendo aqui.',
    },
    'cl02l6az': {
      'en': 'Request list',
      'es': 'Lista de solicitudes',
      'pt': 'lista de pedidos',
    },
    'z99eyj3x': {
      'en': 'Here you can see the requested products and download them.',
      'es': 'Aquí puede ver los productos solicitados y descargarlos.',
      'pt': 'Aqui você pode ver os produtos solicitados e baixá-los.',
    },
    '6481955o': {
      'en': 'Products',
      'es': 'productos',
      'pt': 'Produtos',
    },
    'h2u69cf0': {
      'en': 'Type',
      'es': 'Tipo',
      'pt': 'Tipo',
    },
    'igh8bv0h': {
      'en': 'Category',
      'es': 'Categoría',
      'pt': 'Categoria',
    },
    '6v96f34t': {
      'en': 'Created At',
      'es': 'Creado en',
      'pt': 'Criado em',
    },
    'q09of70l': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    'ehdq5y4d': {
      'en': 'Action',
      'es': 'Acción',
      'pt': 'Ação',
    },
    'p1m2leai': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'pok1ynwu': {
      'en': 'Forms',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'amh0nl6r': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'k8yjnlq6': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'az3wnndi': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    'e7obcpv9': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    'utldlc4k': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    '82zi2mv9': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '9dxln9sq': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'txqz8y95': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    'hzi28lzm': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'zgtoz3bh': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'k6hl3ec3': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    'hesrey9i': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    '09wpcgoa': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '9h3auwoa': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'dgdk3kau': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // applicationList
  {
    '7sdefnr2': {
      'en': 'Personal',
      'es': 'Natural\nPersona',
      'pt': 'Natural\nPessoa',
    },
    'tgwvsudq': {
      'en': 'Natural Person Users',
      'es': 'Usuarios Persona Física',
      'pt': 'Usuários Pessoa Física',
    },
    'rergnxmc': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'tkhui5pm': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '939dbuf9': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    'yo6nrqug': {
      'en': 'Corp',
      'es': 'Corporativo\nEntidad',
      'pt': 'corporativo\nEntidade',
    },
    '50ilh8ix': {
      'en': 'Corporate Entity Users',
      'es': 'Usuarios de entidades corporativas',
      'pt': 'Usuários Pessoa Jurídica',
    },
    '8mbebfy8': {
      'en': 'Member Name',
      'es': 'Nombre de miembro',
      'pt': 'Nome do membro',
    },
    'ks00t0cd': {
      'en': 'RUC',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    '23h98y64': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'pt': 'E-mail',
    },
    'fzhua4mf': {
      'en': 'Date Created',
      'es': 'fecha de creacion',
      'pt': 'Data Criada',
    },
    'd9d3qzg1': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    '6lo7dqnv': {
      'en': 'Search...',
      'es': 'Buscar...',
      'pt': 'Procurar...',
    },
    'zlbqrd7t': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'qlk1q2hg': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'sw25xymu': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    'mtin35qd': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    's1gkiqkp': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    'iw41cu73': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'qc21lart': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    '898rdtfy': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    '3lc7fgpb': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'c96gao98': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'hz6ez0hw': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    '6uebomwt': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    'p3oj4xns': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'mavcf6ls': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '93wai4uk': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // applicationFormCorp
  {
    '4pbostjd': {
      'en': 'Bank Forms',
      'es': 'Descripción general',
      'pt': 'Visão geral',
    },
    '85wbo4lj': {
      'en': 'Here you can see the official forms that have been filled out',
      'es': 'Encontrará sus opciones de cotización a continuación.',
      'pt': 'Você encontrará suas opções de cotação abaixo.',
    },
    '6m9t99fd': {
      'en': 'FORM001',
      'es': '323',
      'pt': '323',
    },
    'tdges1iv': {
      'en': 'INDIVIDUAL CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '06xk1wnb': {
      'en': 'FORM002',
      'es': '323',
      'pt': '323',
    },
    'hrzio41l': {
      'en': 'CORPORATE CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '7dsxk2l6': {
      'en': 'FORM003',
      'es': '323',
      'pt': '323',
    },
    '3k1hx6mg': {
      'en': 'ACCOUNT OPENING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '7z8liqas': {
      'en': 'FORM004',
      'es': '323',
      'pt': '323',
    },
    'fbcfyn0x': {
      'en': 'SIGNATURE CARD',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'f29cki3e': {
      'en': 'FORM006',
      'es': '323',
      'pt': '323',
    },
    'l0iwg673': {
      'en': 'BENEFICIARY DESIGNATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'ru0niptx': {
      'en': 'FORM007',
      'es': '323',
      'pt': '323',
    },
    '5tt2h5lc': {
      'en': 'MINUTES OF BOARD OF DIRECTORS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '8pe6a72y': {
      'en': 'FORM008',
      'es': '323',
      'pt': '323',
    },
    't6ds23vw': {
      'en': 'BENEFICIAL OWNER CERTIFICATION ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '1x1rqzqi': {
      'en': 'FORM009',
      'es': '323',
      'pt': '323',
    },
    'u8wu6c9x': {
      'en': 'AUTHORIZATION FOR ELECTRONIC COMMUNICATIONS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'jmgpla4q': {
      'en': 'FORMCORP',
      'es': '323',
      'pt': '323',
    },
    '0jhdcehq': {
      'en': 'CORPORATE ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'tmmgi1p3': {
      'en': 'FORMPERSONAL',
      'es': '323',
      'pt': '323',
    },
    'jcqpafau': {
      'en': 'PERSONAL ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'yjseyh38': {
      'en': 'FORM013',
      'es': '323',
      'pt': '323',
    },
    '599h84wy': {
      'en': 'VISA DEBIT CARD APPLICATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'w7mqxabw': {
      'en': 'FORM-W-8BEN',
      'es': '323',
      'pt': '323',
    },
    'uvpl0dj3': {
      'en':
          'Certificate of Foreign Status of Beneficial Owner for US Tax Withholding and Reporting (Individuals) ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'a81x58oz': {
      'en': 'FORM-W-9',
      'es': '323',
      'pt': '323',
    },
    'j7a2i1gl': {
      'en': 'Request for Taxpayer\nIdentification Number and Certification',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'fpq5iwws': {
      'en': 'FORM-W-8BEN-E',
      'es': '323',
      'pt': '323',
    },
    '41b5xegy': {
      'en':
          'Certificate of Status of Beneficial Owner for\nUnited States Tax Withholding and Reporting',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'fnxpg6hy': {
      'en': 'General User Information',
      'es': 'Formularios enviados',
      'pt': 'Formulários enviados',
    },
    'nchy2ani': {
      'en': 'Your project status is appearing here.',
      'es': 'El estado de su proyecto aparece aquí.',
      'pt': 'O status do seu projeto está aparecendo aqui.',
    },
    '34mjm278': {
      'en': 'Legal Name: ',
      'es': '',
      'pt': '',
    },
    'ia1w57nr': {
      'en': 'Commerciall Name: ',
      'es': '',
      'pt': '',
    },
    'z1tp2wo9': {
      'en': 'Incorporate No.: ',
      'es': '',
      'pt': '',
    },
    '25qlbfsx': {
      'en': 'Email: ',
      'es': '',
      'pt': '',
    },
    'wd21qzab': {
      'en': 'Create at: ',
      'es': '',
      'pt': '',
    },
    'c1aab7sb': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    'gl2zq6lr': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    '2cp7w0jl': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    'f3zaf34n': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    '2c5193u1': {
      'en': 'Total User Count',
      'es': 'Recuento total de usuarios',
      'pt': 'Contagem total de usuários',
    },
    'f30ahktb': {
      'en': 'An overview of all your users on your platform.',
      'es': 'Una visión general de todos sus usuarios en su plataforma.',
      'pt': 'Uma visão geral de todos os seus usuários em sua plataforma.',
    },
    'pqfqjvyn': {
      'en': '56.4k',
      'es': '56.4k',
      'pt': '56,4k',
    },
    'dyki0h57': {
      'en': 'Forms',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'pvg2q597': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'nr1327ua': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    'vh4ff7bv': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    'lht84c25': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    'zj4olvwf': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    '7jvx67gb': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    '8zc288h2': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'lye4039h': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    'wcl22lel': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '45u57cgo': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'co4muf72': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    'j3k271t4': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    'wjl7sxk9': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    '39wgi5wm': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'mh00ls3t': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // formsPersonal
  {
    '66fu9gau': {
      'en': 'Bank Forms',
      'es': 'Descripción general',
      'pt': 'Visão geral',
    },
    '87dgzv82': {
      'en': 'Here you can see the official forms that have been filled out',
      'es': 'Encontrará sus opciones de cotización a continuación.',
      'pt': 'Você encontrará suas opções de cotação abaixo.',
    },
    'hwpggbez': {
      'en': 'FORM001',
      'es': '323',
      'pt': '323',
    },
    'l48zh945': {
      'en': 'INDIVIDUAL CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '3x0xmo7i': {
      'en': 'FORM002',
      'es': '323',
      'pt': '323',
    },
    'tirpgw70': {
      'en': 'CORPORATE CLIENT FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '71j4xt9t': {
      'en': 'FORM003',
      'es': '323',
      'pt': '323',
    },
    '8vojp6ez': {
      'en': 'ACCOUNT OPENING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'ki0jgtal': {
      'en': 'FORM004',
      'es': '323',
      'pt': '323',
    },
    'pu9l5q1f': {
      'en': 'SIGNATURE CARD',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'y1slgv2a': {
      'en': 'FORM006',
      'es': '323',
      'pt': '323',
    },
    'gryd9naw': {
      'en': 'BENEFICIARY DESIGNATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'k6ukbq4n': {
      'en': 'FORM007',
      'es': '323',
      'pt': '323',
    },
    'ap94yo0j': {
      'en': 'MINUTES OF BOARD OF DIRECTORS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'yf47ipsp': {
      'en': 'FORM008',
      'es': '323',
      'pt': '323',
    },
    'p71qz4lg': {
      'en': 'BENEFICIAL OWNER CERTIFICATION ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '5va5f7dl': {
      'en': 'FORM009',
      'es': '323',
      'pt': '323',
    },
    '7y45zo77': {
      'en': 'AUTHORIZATION FOR ELECTRONIC COMMUNICATIONS',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'a07t6f5i': {
      'en': 'FORMCORP',
      'es': '323',
      'pt': '323',
    },
    'dni9ons4': {
      'en': 'CORPORATE ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'xoix029f': {
      'en': 'FORMPERSONAL',
      'es': '323',
      'pt': '323',
    },
    'n095fsvt': {
      'en': 'PERSONAL ONLINE BANKING FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    '2tp7y9pn': {
      'en': 'FORM013',
      'es': '323',
      'pt': '323',
    },
    '2nd4t1xg': {
      'en': 'VISA DEBIT CARD APPLICATION FORM',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'jkliakad': {
      'en': 'FORM-W-8BEN',
      'es': '323',
      'pt': '323',
    },
    'rtg1bmur': {
      'en':
          'Certificate of Foreign Status of Beneficial Owner for US Tax Withholding and Reporting (Individuals) ',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'nlqjzyzw': {
      'en': 'FORM-W-9',
      'es': '323',
      'pt': '323',
    },
    'k16zd5r5': {
      'en': 'Request for Taxpayer\nIdentification Number and Certification',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'w9mw64yf': {
      'en': 'FORM-W-8BEN-E',
      'es': '323',
      'pt': '323',
    },
    '3jeukv1b': {
      'en':
          'Certificate of Status of Beneficial Owner for\nUnited States Tax Withholding and Reporting',
      'es': 'Cuenta de ahorros',
      'pt': 'Conta Poupança',
    },
    'fttb1c58': {
      'en': 'General User Information',
      'es': 'Formularios enviados',
      'pt': 'Formulários enviados',
    },
    'i65za6fn': {
      'en': 'Here is general information about this user.',
      'es': 'El estado de su proyecto aparece aquí.',
      'pt': 'O status do seu projeto está aparecendo aqui.',
    },
    'cc4dotu6': {
      'en': 'Name: ',
      'es': '',
      'pt': '',
    },
    'a6lu1spy': {
      'en': 'ID No.: ',
      'es': '',
      'pt': '',
    },
    'gstwgbfy': {
      'en': 'Passport No.: ',
      'es': '',
      'pt': '',
    },
    'pid6jwdj': {
      'en': 'Email: ',
      'es': '',
      'pt': '',
    },
    'qmu18slj': {
      'en': 'Create at: ',
      'es': '',
      'pt': '',
    },
    'gogyem9d': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    '6lgqzuvc': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    '1ypnoam8': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    '6uea02ye': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    'tchnmvgm': {
      'en': 'Total User Count',
      'es': 'Recuento total de usuarios',
      'pt': 'Contagem total de usuários',
    },
    '49bdjgll': {
      'en': 'An overview of all your users on your platform.',
      'es': 'Una visión general de todos sus usuarios en su plataforma.',
      'pt': 'Uma visão geral de todos os seus usuários em sua plataforma.',
    },
    'dl4xd296': {
      'en': '56.4k',
      'es': '56.4k',
      'pt': '56,4k',
    },
    'l3hb2bvk': {
      'en': 'Forms',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'uw92fn4o': {
      'en': '1',
      'es': '1',
      'pt': '1',
    },
    'x5ka5qzx': {
      'en': 'Notifications',
      'es': 'Notificaciones',
      'pt': 'Notificações',
    },
    's6slxj90': {
      'en': 'Unrecognizable Signature',
      'es': 'Firma irreconocible',
      'pt': 'Assinatura Irreconhecível',
    },
    '5f97amk3': {
      'en':
          'Please correct the signature on the form, to continue with your process',
      'es':
          'Por favor corrija la firma en el formulario, para continuar con su proceso',
      'pt':
          'Por favor, corrija a assinatura no formulário, para continuar com o seu processo',
    },
    '4dgakbcz': {
      'en': 'Received',
      'es': 'Recibió',
      'pt': 'Recebido',
    },
    '2wvfbvgl': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'kzf2o2hh': {
      'en': 'Upload document',
      'es': 'Subir documento',
      'pt': 'Carregar documento',
    },
    'eft04ewl': {
      'en': 'upload insurance file document',
      'es': 'cargar documento de archivo de seguro',
      'pt': 'carregar documento de arquivo de seguro',
    },
    '8vbn5avr': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'rg1dk7jk': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'k974wvbx': {
      'en': 'Issues Form',
      'es': 'Formulario de problemas',
      'pt': 'Formulário de problemas',
    },
    '6gaederx': {
      'en': 'incomplete fields in the form',
      'es': 'campos incompletos en el formulario',
      'pt': 'campos incompletos no formulário',
    },
    '6nk5yq2e': {
      'en': 'Posted',
      'es': 'Al corriente',
      'pt': 'Postou',
    },
    'clp9lvfi': {
      'en': 'A few moments ago',
      'es': 'hace unos momentos',
      'pt': 'alguns momentos atrás',
    },
    'k3jx0kd7': {
      'en': 'Home',
      'es': 'Hogar',
      'pt': 'Lar',
    },
  },
  // mainWebNav
  {
    'rdo2xzvq': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'sdkwfat3': {
      'en': 'Profile ',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    '4qmp14cw': {
      'en': 'Profile ',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'vjnr0l1f': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'pt': 'Sair',
    },
  },
  // mobileNav
  {
    'iv3i9ixc': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'y7z724j1': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'm03mh56a': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
  },
  // more
  {
    '1pojt6w2': {
      'en': 'Edit ',
      'es': 'Editar',
      'pt': 'Editar',
    },
    '7ydefrxi': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // resetPasswordMail
  {
    '41j6kmwj': {
      'en': 'Password reset',
      'es': 'Restablecimiento de contraseña',
      'pt': 'Redefinição de senha',
    },
    'e14yckap': {
      'en': 'We have sent you an email with the link to reset your password',
      'es':
          'Le hemos enviado un correo electrónico con el enlace para restablecer su contraseña',
      'pt': 'Enviamos um e-mail com o link para redefinir sua senha',
    },
    '06wxotbh': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // CreateAccount
  {
    'wbiw7d1s': {
      'en': 'ACCOUNT OPENING FORM',
      'es': 'FORMULARIO DE APERTURA DE CUENTA',
      'pt': 'FORMULÁRIO DE ABERTURA DE CONTA',
    },
    'otc0tvpz': {
      'en': 'Account type',
      'es': 'Tipo de cuenta',
      'pt': 'Tipo de conta',
    },
    'hz9ijfnl': {
      'en': 'Current Account ',
      'es': 'Cuenta actual',
      'pt': 'Conta corrente',
    },
    '62sjr0bg': {
      'en': 'Savings Account (only USD)',
      'es': 'Cuenta de Ahorros (solo USD)',
      'pt': 'Conta Poupança (apenas USD)',
    },
    '7ksdkh8x': {
      'en': 'Standard',
      'es': 'Estándar',
      'pt': 'Padrão',
    },
    'zcltve18': {
      'en': 'Premium',
      'es': 'De primera calidad',
      'pt': 'Prêmio',
    },
    'uze98pzs': {
      'en': 'Initial Deposit',
      'es': 'Depósito inicial',
      'pt': 'Depósito inicial',
    },
    'na2qfe0m': {
      'en': 'US Dollar',
      'es': 'Dólar estadounidense',
      'pt': 'Dólar americano',
    },
    '8llibwpp': {
      'en': 'Euros',
      'es': 'euros',
      'pt': 'euros',
    },
    '7x6i8ek0': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'zqjd7l6d': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    'z1smdq25': {
      'en': 'Label here...',
      'es': 'Etiqueta aquí...',
      'pt': 'Marque aqui...',
    },
    '3ycwtnzf': {
      'en': 'Method of Initial Deposit ',
      'es': 'Método de Depósito Inicial',
      'pt': 'Método de Depósito Inicial',
    },
    '2zbmdbb8': {
      'en': 'Cash',
      'es': 'Dinero',
      'pt': 'Dinheiro',
    },
    'tj3tpho2': {
      'en': 'Atlas Bank Check',
      'es': 'Cheque bancario atlas',
      'pt': 'Cheque Bancário Atlas',
    },
    '4wdk81op': {
      'en': 'Cashier Check',
      'es': 'Cheque de caja',
      'pt': 'Cheque administrativo',
    },
    'k504toup': {
      'en': 'Other Bank Check ',
      'es': 'Otro cheque bancario',
      'pt': 'Outro cheque bancário',
    },
    '90f41kb4': {
      'en': 'Local Transfer',
      'es': 'Transferencia local',
      'pt': 'Transferência local',
    },
    'krl54z45': {
      'en': 'Internal Transfer',
      'es': 'Transferencia interna',
      'pt': 'Transferência interna',
    },
    'nxnd3vlj': {
      'en': 'International Transfer',
      'es': 'Transferencia internacional',
      'pt': 'Transferência internacional',
    },
    '7v9bj05i': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'spdmierh': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    '8fa6t8zc': {
      'en': 'Purpose of the Account',
      'es': 'Propósito de la Cuenta',
      'pt': 'Objetivo da conta',
    },
    'n5crudw6': {
      'en': 'Savings',
      'es': 'Ahorros',
      'pt': 'Poupança',
    },
    '9qfcwmh9': {
      'en': 'Personal Expenses ',
      'es': 'Gastos personales',
      'pt': 'Despesas pessoais',
    },
    'tiv4ug2h': {
      'en': 'Loan Repayment ',
      'es': 'Pago de prestamo',
      'pt': 'Pagamento de empréstimo',
    },
    'm4d56obz': {
      'en': 'Utility Payments',
      'es': 'Pagos de servicios públicos',
      'pt': 'Pagamentos de serviços públicos',
    },
    'wpxfc86n': {
      'en': 'Working Capital Needs ',
      'es': 'Necesidades de capital de trabajo',
      'pt': 'Necessidades de capital de giro',
    },
    'h8s6m29p': {
      'en': 'Payment to Suppliers',
      'es': 'Pago a Proveedores',
      'pt': 'Pagamento a Fornecedores',
    },
    't3si03a7': {
      'en': 'Payroll',
      'es': 'Nómina de sueldos',
      'pt': 'Folha de pagamento',
    },
    'btf1szb5': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'b3hipbut': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'ck332mb6': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    'ebuy7b0v': {
      'en': 'Origin of Funds',
      'es': 'Origen de los Fondos',
      'pt': 'Origem dos Fundos',
    },
    'kp9atiy2': {
      'en': 'Description here...',
      'es': 'Descripción aquí...',
      'pt': 'Descrição aqui...',
    },
    'hm728atg': {
      'en': 'Origin of Reccurent Funds',
      'es': 'Origen de los Fondos Recurrentes',
      'pt': 'Origem dos Fundos Recorrentes',
    },
    '58v7dacc': {
      'en': 'Description here...',
      'es': 'Descripción aquí...',
      'pt': 'Descrição aqui...',
    },
    'qrjj1uap': {
      'en': 'Origin of NetWorth',
      'es': 'Origen de NetWorth',
      'pt': 'Origem do NetWorth',
    },
    '77lokim1': {
      'en': 'Description here...',
      'es': 'Descripción aquí...',
      'pt': 'Descrição aqui...',
    },
    'hco26x98': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    'j1x4lpot': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    's6oouo4s': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'vh3yg0cr': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    '794xbkj7': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '0wa7fkw3': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'w53b3235': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // CreateAccountStep2
  {
    'giktg3df': {
      'en': 'Transactions Profile',
      'es': 'Perfil de transacciones',
      'pt': 'Perfil de transações',
    },
    '54qy0lor': {
      'en': 'Incoming Amount',
      'es': 'Importe entrante',
      'pt': 'Valor recebido',
    },
    '3vuga48c': {
      'en': 'Cash Deposits',
      'es': 'Depósitos en efectivo',
      'pt': 'Depósitos em dinheiro',
    },
    'gsdk8h7c': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'pqh20z4d': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'skdjl3uy': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'yfq4vcja': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'scdsd3yo': {
      'en': 'Check Deposits',
      'es': 'Depósitos de cheques',
      'pt': 'depósitos em cheque',
    },
    'zb9zzi5x': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'oewntaph': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'd4vyachb': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'y8xeg77e': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    '31qpi7d5': {
      'en': 'Incoming Transfers ',
      'es': 'Transferencias entrantes',
      'pt': 'Transferências recebidas',
    },
    'z4i0q5jn': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    '9lilu876': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    '29lt88ol': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'nsrnilyk': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    '5xlcbhiz': {
      'en': 'Incoming ACH',
      'es': 'CCA entrante',
      'pt': 'ACH de entrada',
    },
    '0vt4grvt': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    '4aaf83n8': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'cpnxl9cw': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'da60mkqi': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'ecvmluys': {
      'en': 'Incoming Internal Transfers',
      'es': 'Transferencias internas entrantes',
      'pt': 'Transferências internas recebidas',
    },
    '7rfs5mmi': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'jlsb6can': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'tjb3ue1k': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    '2du5pw3j': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'ubby7w7b': {
      'en': ' Outgoing Amount ',
      'es': 'Importe saliente',
      'pt': 'Valor de saída',
    },
    'gc7ijz1d': {
      'en': 'Cash Withdrawal',
      'es': 'Retiro de efectivo',
      'pt': 'Retirada de dinheiro',
    },
    'r7665icy': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'tpwsf77p': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'izmgk7hm': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'iia5mguq': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'gk4f8cj1': {
      'en': 'Payments by Checks',
      'es': 'Pagos con Cheques',
      'pt': 'Pagamentos por Cheques',
    },
    'nbu4wqfr': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'wesefzu7': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'xvcbpl9c': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'u685vcgf': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'ekc1das7': {
      'en': 'Outgoing Transfers ',
      'es': 'Transferencias salientes',
      'pt': 'Transferências de saída',
    },
    'g4vmsb4e': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'bdl3p8iw': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'a0tzyem6': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    '9zgi0tvd': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'ypaj02cy': {
      'en': 'Outgoing ACH Transfers',
      'es': 'Transferencias ACH salientes',
      'pt': 'Transferências ACH de saída',
    },
    'kk1euwky': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'fbt6g0tn': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'ee0s6u7a': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    'aum1qlw7': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    '4cu1t5sj': {
      'en': 'Outgoing Internal Transfers',
      'es': 'Transferencias internas salientes',
      'pt': 'Transferências internas de saída',
    },
    'mehb3efo': {
      'en': 'Expected Amount per Month',
      'es': 'Cantidad esperada por mes',
      'pt': 'Valor esperado por mês',
    },
    'bwfikjav': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'oaw1zvwb': {
      'en': '# Transactions per Month',
      'es': '# transacciones por mes',
      'pt': '# transações por mês',
    },
    '8x24xe35': {
      'en': 'Enter the amount',
      'es': 'Introduce la cantidad',
      'pt': 'Digite o valor',
    },
    'lb1kilzg': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'cbln4s4n': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    '76eb256e': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'nnxdd833': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'o2mx7xt7': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'yolzndfj': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'm6hkr6h6': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'e8fdj14h': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // CreateAccountStep3
  {
    'z99me324': {
      'en': 'Main Transfer Beneficiaries and Remitters of Funds',
      'es':
          'Principales Beneficiarios de Transferencias y Remitentes de Fondos',
      'pt': 'Principais Beneficiários da Transferência e Remetentes de Fundos',
    },
    'noomush7': {
      'en': 'Beneficiaries',
      'es': 'Beneficiarios',
      'pt': 'Beneficiários',
    },
    'xpqxrgmi': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    'byrygyn4': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    '5wjnw3nc': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    'g052e5gp': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    't15jixfu': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    '01ucnz70': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    'uofepkni': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    '9d8qlj5z': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    'srrixig5': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    '7s47po4g': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    '836udk3n': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    'ou226c9s': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    'm3vz3tdb': {
      'en': 'Remitters',
      'es': 'remitentes',
      'pt': 'Remetentes',
    },
    'xmh7j8r2': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    'lsz4v93u': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    'e00vnrtj': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    'wf10dffs': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    'obojdzem': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    'qhow7qf9': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    'hfx9qr0f': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    'hnr0scwm': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    'a9tml5ns': {
      'en': 'Names',
      'es': 'nombres',
      'pt': 'nomes',
    },
    's63kr7lh': {
      'en': 'Enter the  Name',
      'es': 'Introduzca el nombre',
      'pt': 'Digite o nome',
    },
    '4wx7d309': {
      'en': 'Countries',
      'es': 'Países',
      'pt': 'Países',
    },
    'zvh9fujg': {
      'en': 'Enter the  contries',
      'es': 'Ingrese los países',
      'pt': 'Digite os países',
    },
    'rxqolymr': {
      'en': 'Authorized Signatures',
      'es': 'Firmas autorizadas',
      'pt': 'Assinaturas Autorizadas',
    },
    'idgp21tn': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'qvzm7cww': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'gph9a6on': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    '8vzd3n1s': {
      'en': 'Passport ',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'chfwozie': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'iv0d0vce': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    'qhh9mrp7': {
      'en': 'ID No.',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'anxmqjh6': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'h981pxy4': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'brq6jm9s': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '0omlgdzb': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    '8llonlq4': {
      'en': 'Passport ',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'rpi5ct21': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'y4dzphbp': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    '1ovsw416': {
      'en': 'ID No.',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'az0kizn1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'inx3v8ev': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    '7mv8gaeq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '6vutomzo': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'mrf8iie6': {
      'en': 'Passport ',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'sn26sr8c': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'nwdblwv5': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    '8kshmvr0': {
      'en': 'ID No.',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'c8dtgbcq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'drf5sx4d': {
      'en': 'SIGNATURE INSTRUCTIONS ',
      'es': 'INSTRUCCIONES DE FIRMA',
      'pt': 'INSTRUÇÕES DE ASSINATURA',
    },
    'm6qm71eq': {
      'en': 'Leave your specifications here',
      'es': 'Deja aquí tus especificaciones',
      'pt': 'Deixe suas especificações aqui',
    },
    'n9netvy1': {
      'en': 'Contract of Banking Products and Services ',
      'es': 'Contrato de Productos y Servicios Bancarios',
      'pt': 'Contrato de Produtos e Serviços Bancários',
    },
    'wy9a8sjv': {
      'en': 'Single Contract of Banking Broducts and Services',
      'es': 'Contrato Único de Productos y Servicios Bancarios',
      'pt': 'Contrato Único de Produtos e Serviços Bancários',
    },
    'ther9wlo': {
      'en':
          'By signing at the bottom of this document, the undersigned declares, acknowledges and accepts having received,\nread and abide by the terms and conditions of this Single Contract of Banking Products and Services. ',
      'es':
          'Al firmar al pie de este documento, el suscrito declara, reconoce y acepta haber recibido,\nleer y cumplir con los términos y condiciones del presente Contrato Único de Productos y Servicios Bancarios.',
      'pt':
          'Ao assinar ao pé deste documento, o abaixo-assinado declara, reconhece e aceita ter recebido,\nler e cumprir os termos e condições deste Contrato Único de Produtos e Serviços Bancários.',
    },
    '7pbym3cs': {
      'en': 'Signed in good faith  in the city of ',
      'es': 'Firmado de buena fe en la ciudad de',
      'pt': 'Assinado de boa fé na cidade de',
    },
    'rhdxa1eg': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'f3kkvoqa': {
      'en': 'Please select...',
      'es': 'Por favor selecciona...',
      'pt': 'Por favor selecione...',
    },
    'o95gs3u7': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'pt': 'Procurar um item...',
    },
    'ge8f3u4v': {
      'en': 'Add signature',
      'es': 'Agregar firma',
      'pt': 'Adicionar assinatura',
    },
    'd8n81s3y': {
      'en': 'ONLINE BANKING',
      'es': 'BANCA EN LÍNEA',
      'pt': 'ACESSO A OPERAÇÕES BANCÁRIAS VIA INTERNET',
    },
    'h54xg1ky': {
      'en': 'Do you want to link this account to Online Banking?',
      'es': '¿Desea vincular esta cuenta a la Banca en Línea?',
      'pt': 'Deseja vincular esta conta ao Internet Banking?',
    },
    'jaqzpfb6': {
      'en':
          'I hereby declare under oath that the information contained herein is true and correct to the best of my knowledge, and agree to promptly inform Atlas Bank (Panama), S.A. of any changes made of such information.',
      'es':
          'Por la presente declaro bajo juramento que la información contenida en este documento es verdadera y correcta a mi leal saber y entender, y acepto informar de inmediato a Atlas Bank (Panamá), S.A. de cualquier cambio realizado en dicha información.',
      'pt':
          'Declaro sob juramento que as informações aqui contidas são verdadeiras e corretas, tanto quanto é do meu conhecimento, e concordo em informar prontamente o Atlas Bank (Panama), S.A. sobre quaisquer alterações feitas em tais informações.',
    },
    'sn5jadxl': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
    'kmp35dvk': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
    'nj6q4qwb': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    '0d5vggvo': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'mbdmv2xg': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'pu4xzhe0': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'ujd5u22s': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'pt': 'Campo é obrigatório',
    },
    'v7jpvoun': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'pt': 'Escolha uma opção no menu suspenso',
    },
  },
  // profileRecord
  {
    'donahevx': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'wlrytd8e': {
      'en': 'Photo Profile',
      'es': 'Foto de perfil',
      'pt': 'Perfil da foto',
    },
    'ic1mxsvg': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'x0my8g4v': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    'ug67dua9': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'gksnc01j': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'w148hkc8': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    'p0z39429': {
      'en': 'Reset User Password',
      'es': 'Restablecer contraseña de usuario',
      'pt': 'Redefinir senha do usuário',
    },
    'd7t23zlt': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'lqv3zqqg': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'nvpqm6va': {
      'en': 'Request list',
      'es': 'Lista de solicitudes',
      'pt': 'lista de pedidos',
    },
    '5csg78z8': {
      'en': 'Here you can see the requested products and download them.',
      'es': 'Aquí puede ver los productos solicitados y descargarlos.',
      'pt': 'Aqui você pode ver os produtos solicitados e baixá-los.',
    },
    'clugklwg': {
      'en': 'Products',
      'es': 'productos',
      'pt': 'Produtos',
    },
    'm1oy7qln': {
      'en': 'Type',
      'es': 'Tipo',
      'pt': 'Tipo',
    },
    'sesk6ldm': {
      'en': 'Category',
      'es': 'Categoría',
      'pt': 'Categoria',
    },
    'qa3udtqe': {
      'en': 'Created At',
      'es': 'Creado en',
      'pt': 'Criado em',
    },
    'u1t0dpdd': {
      'en': 'Status',
      'es': 'Estado',
      'pt': 'Status',
    },
    '8g1nhy8d': {
      'en': 'Bank form',
      'es': 'Formulario bancario',
      'pt': 'formulário bancário',
    },
    'gpzjv3yl': {
      'en': 'Category',
      'es': 'Categoría',
      'pt': 'Categoria',
    },
    'k8nbviwq': {
      'en': 'Open ',
      'es': 'Abierto',
      'pt': 'Abrir',
    },
    '7dsx3zbs': {
      'en': 'Personal Information',
      'es': 'Informacion personal',
      'pt': 'Informações pessoais',
    },
    's6pyx17y': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'qpe99xv5': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'rxsn5bkj': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'raaswlie': {
      'en': 'Second Name',
      'es': 'Segundo nombre',
      'pt': 'Segundo nome',
    },
    '8dgmxqwn': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ijybzvak': {
      'en': 'Last Name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    'rfnkqck9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'itrhjo2k': {
      'en': 'Second Last Name ',
      'es': 'Segundo apellido',
      'pt': 'Segundo sobrenome',
    },
    'hvxxx7qv': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ehmqrqj5': {
      'en': 'Spouse Last Name (optional)',
      'es': 'Apellido del cónyuge (opcional)',
      'pt': 'Sobrenome do cônjuge (opcional)',
    },
    'jmgjl7rv': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'f6hqu7bo': {
      'en': 'Birthday',
      'es': 'Cumpleaños',
      'pt': 'Aniversário',
    },
    'yqmpva2l': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'lgmuvmgh': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    'co93i751': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    'hh0k239d': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    '4lprtrsx': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    '253mwdjy': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'bcl2g9cu': {
      'en': 'Nationality',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'cv5hqncw': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'b3an65gw': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    't5siik9h': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'z0e086jr': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '2y7kb18o': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'jcab6mqj': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'flnrxkbu': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'z5wbrczp': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    '0u8nl0t3': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'h2h4ba3p': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'qd9yl6t9': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'h4ngwtgg': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'ko7yme8l': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '3tukcomf': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'd979bin6': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'afgix0g8': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'bo14y8sg': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'spis40oy': {
      'en': 'Marital Status',
      'es': 'Estado civil',
      'pt': 'Estado civil',
    },
    'pp9vwizf': {
      'en': 'Single',
      'es': 'Soltero',
      'pt': 'Solteiro',
    },
    'esziszii': {
      'en': 'Married',
      'es': 'Casado',
      'pt': 'Casado',
    },
    'ue6cwa5p': {
      'en': 'Divorced',
      'es': 'Divorciado',
      'pt': 'divorciado',
    },
    '77x6071w': {
      'en': 'Widow',
      'es': 'Viuda',
      'pt': 'Viúva',
    },
    'ni2i3j8y': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'ji46aiy5': {
      'en': 'Employment',
      'es': 'Empleo',
      'pt': 'Emprego',
    },
    '3qmkq0w3': {
      'en': 'Status ',
      'es': 'Estado',
      'pt': 'Status',
    },
    'i71i492c': {
      'en': 'Salary Worker',
      'es': 'trabajador asalariado',
      'pt': 'Assalariado',
    },
    'ge91kg29': {
      'en': 'Self Employeed',
      'es': 'Auto-empleado',
      'pt': 'Auto-empregado',
    },
    '94sr7lld': {
      'en': 'Retired',
      'es': 'Jubilado',
      'pt': 'Aposentado',
    },
    '86dmdzm4': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'z98e210d': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    '33li6hdd': {
      'en': 'Place of Work',
      'es': 'Lugar de trabajo',
      'pt': 'Local de trabalho',
    },
    'mbr2zs6g': {
      'en': 'Name of Company',
      'es': 'Nombre de la compañía',
      'pt': 'Nome da companhia',
    },
    'nz9eqhys': {
      'en': 'Enter your place of work..',
      'es': 'Ingresa tu lugar de trabajo..',
      'pt': 'Digite seu local de trabalho..',
    },
    'wh5xym2o': {
      'en': 'Ocupation',
      'es': 'Ocupación',
      'pt': 'Ocupação',
    },
    'utvm16f9': {
      'en': 'Enter your ocupation..',
      'es': 'Ingresa tu ocupación..',
      'pt': 'Digite sua ocupação..',
    },
    'izfq2irs': {
      'en': 'Job Address 1',
      'es': 'Dirección de trabajo 1',
      'pt': 'Endereço de trabalho 1',
    },
    'ez9tw956': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'rlg5q1m7': {
      'en': 'Job Address 2',
      'es': 'Dirección de trabajo 2',
      'pt': 'Endereço do trabalho 2',
    },
    'q6ps2r5v': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'mpnixdka': {
      'en': 'Telephone of Company',
      'es': 'Teléfono de Empresa',
      'pt': 'Telefone da Empresa',
    },
    'h2izk8gj': {
      'en': 'Enter your cell phone..',
      'es': 'Ingresa tu celular..',
      'pt': 'Digite seu celular..',
    },
    'pjfjcd1l': {
      'en': 'Anual Salary',
      'es': 'Salario Anual',
      'pt': 'Salário Anual',
    },
    '79yi3901': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'fwa51f0u': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    '146rthe3': {
      'en': 'Enter your annual  salary..',
      'es': 'Ingresa tu salario anual..',
      'pt': 'Digite seu salário anual..',
    },
    '34k9h52l': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'sq14pyg5': {
      'en': 'Enter your job title...',
      'es': 'Ingrese el título de su trabajo...',
      'pt': 'Digite o título do seu trabalho...',
    },
    'tfcnka83': {
      'en': 'Type of Business',
      'es': 'Tipo de negocio',
      'pt': 'Tipo de negócios',
    },
    'll2sl73c': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    '633ubwam': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    '3cj79mih': {
      'en': 'Source of  Net Worth',
      'es': 'Fuente del patrimonio neto',
      'pt': 'Fonte do patrimônio líquido',
    },
    'zxkbe21g': {
      'en': 'SOURCE OF NET WORTH',
      'es': 'FUENTE DEL PATRIMONIO NETO',
      'pt': 'FONTE DE VALOR LÍQUIDO',
    },
    'twkm7iom': {
      'en': 'Explain...',
      'es': 'Explicar...',
      'pt': 'Explicar...',
    },
    'a4x0yswu': {
      'en': 'Home Adress',
      'es': 'Dirección de casa',
      'pt': 'Endereço residencial',
    },
    'lzdn5wgi': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '6mc516f5': {
      'en': 'Panamá Oeste',
      'es': 'Panamá Oeste',
      'pt': 'Panamá Oeste',
    },
    'o005upd7': {
      'en': 'Chiriqui',
      'es': 'Chiriquí',
      'pt': 'Chiriqui',
    },
    '96w7r7wo': {
      'en': 'Bocas del Toro',
      'es': 'bocas del toro',
      'pt': 'Bocas del Toro',
    },
    'rba5yzdx': {
      'en': 'Colon',
      'es': 'Colon',
      'pt': 'Cólon',
    },
    'pu6nxid1': {
      'en': 'Herrera',
      'es': 'herrera',
      'pt': 'Herrera',
    },
    'ugrrsfag': {
      'en': 'Cocle',
      'es': 'Coclé',
      'pt': 'coco',
    },
    'ghcjp8u6': {
      'en': 'Veraguas ',
      'es': 'Veraguas',
      'pt': 'Veraguas',
    },
    '6lfg32d5': {
      'en': 'Darien',
      'es': 'Darién',
      'pt': 'Darien',
    },
    'c42h4jyf': {
      'en': 'Country',
      'es': 'País',
      'pt': 'País',
    },
    'ug728ki8': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    'qnehsto4': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'xkp2q7h1': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    'xkkhz7sp': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    'pcj5bgq8': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'zvvyg4p9': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    'ae0id0r6': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    'h4ie1ohn': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    '5epa3idj': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    'vitxb493': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    'wv21by3o': {
      'en': 'House/Apartment Number',
      'es': 'Número de casa/apartamento',
      'pt': 'Número da casa/apartamento',
    },
    'bayzmzfa': {
      'en': 'Enter your House/Apartment Number',
      'es': 'Ingrese su Número de Casa/Apartamento',
      'pt': 'Insira o número da sua casa/apartamento',
    },
    '0evueoqb': {
      'en': 'Zip Code',
      'es': 'Código postal',
      'pt': 'CEP',
    },
    'xbzq5un2': {
      'en': 'Enter Zip Code.',
      'es': 'Ingresa tu código postal.',
      'pt': 'Digite o código postal.',
    },
    'cl0fq8mn': {
      'en': 'High School',
      'es': 'Escuela secundaria',
      'pt': 'Ensino médio',
    },
    'wbik1vvs': {
      'en': 'Masters Degree',
      'es': 'Maestría',
      'pt': 'Mestrado',
    },
    'csa5j75c': {
      'en': 'Bachelors Degree',
      'es': 'Licenciatura',
      'pt': 'Diploma de bacharel',
    },
    'c6vh4ouj': {
      'en': 'PHD',
      'es': 'Doctor',
      'pt': 'PHD',
    },
    'fs586xx3': {
      'en': 'Educational Level',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    'lk5ausy6': {
      'en': 'No. of Dependents',
      'es': 'Número de dependientes',
      'pt': 'Número de dependentes',
    },
    'pl32hvhp': {
      'en': 'How many people depend on you...',
      'es': 'Cuantas personas dependen de ti...',
      'pt': 'Quantas pessoas dependem de você...',
    },
    'qe83pwhm': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
    'xjvxeez5': {
      'en': 'Documents',
      'es': 'Documentos',
      'pt': 'Documentos',
    },
    '1vhs4q5h': {
      'en': '1. Attach Local ID',
      'es': '1. Adjuntar identificación local',
      'pt': '1. Anexe o ID local',
    },
    '5om2ow4d': {
      'en': 'Download',
      'es': 'Descargar',
      'pt': 'Download',
    },
    '9c0aurr6': {
      'en': '2. Attach Passport',
      'es': '2. Adjuntar Pasaporte',
      'pt': '2. Anexar passaporte',
    },
    '8nhr286p': {
      'en': 'Download',
      'es': 'Descargar',
      'pt': 'Download',
    },
    'i7yqlwfd': {
      'en': '3. Attach Proof of Payment',
      'es': '3. Adjuntar Comprobante de Pago',
      'pt': '3. Anexe o Comprovante de Pagamento',
    },
    '7dtgsf48': {
      'en': 'Download',
      'es': 'Descargar',
      'pt': 'Download',
    },
    '77o6f5mo': {
      'en': '4. Attach invoice for payment of services ',
      'es': '4. Adjuntar factura de pago de servicios',
      'pt': '4. Anexar nota fiscal para pagamento dos serviços',
    },
    '79axnly7': {
      'en': 'Download',
      'es': 'Descargar',
      'pt': 'Download',
    },
  },
  // adminResetPasswordMail
  {
    '8o8i15tr': {
      'en': 'Password reset',
      'es': 'Restablecimiento de contraseña',
      'pt': 'Redefinição de senha',
    },
    '1b7hqeqt': {
      'en':
          'An email has been sent with the link to reset the user\'s password',
      'es':
          'Se ha enviado un correo electrónico con el enlace para restablecer la contraseña del usuario',
      'pt':
          'Um e-mail foi enviado com o link para redefinir a senha do usuário',
    },
    '30cjup82': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // mainWebNavAdmin
  {
    'bp3s5lel': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    'avrem77o': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'vvwqfni3': {
      'en': 'FORMS',
      'es': 'FORMAS',
      'pt': 'FORMULÁRIOS',
    },
    'c99d2g8q': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    'syd4i8xp': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'pt': 'Sair',
    },
  },
  // mobileNavAdmin
  {
    'svclb0kp': {
      'en': 'Users',
      'es': 'Usuarios',
      'pt': 'Usuários',
    },
    'n6hhlvu7': {
      'en': 'Forms',
      'es': 'formularios',
      'pt': 'Formulários',
    },
    'd0atbiff': {
      'en': 'Dashboard',
      'es': 'Panel',
      'pt': 'Painel',
    },
    '1mnuo15k': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
  },
  // bank_reference
  {
    '7bi8omvv': {
      'en': 'Create Bank Reference',
      'es': 'Crear referencia bancaria',
      'pt': 'Criar Referência Bancária',
    },
    'x7lgv0lp': {
      'en': 'Find members by searching below',
      'es': 'Encuentre miembros buscando a continuación',
      'pt': 'Encontre membros pesquisando abaixo',
    },
    'tvlm9kfj': {
      'en': 'Bank Name',
      'es': 'Nombre del banco',
      'pt': 'Nome do banco',
    },
    'rxbxzpn0': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '1fc5ldd9': {
      'en': 'Account Type',
      'es': 'Tipo de cuenta',
      'pt': 'tipo de conta',
    },
    'l9d7affs': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'wqzcvr77': {
      'en': 'Contact Person',
      'es': 'Persona de contacto',
      'pt': 'Pessoa de contato',
    },
    'afilbvlq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ord8xdov': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'lqqgwed9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ag648foh': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar referência',
    },
  },
  // MoreReferencia
  {
    'qf0wpnr4': {
      'en': 'Edit ',
      'es': 'Editar',
      'pt': 'Editar',
    },
    'lpi8sthq': {
      'en': 'Delete ',
      'es': 'Borrar',
      'pt': 'Excluir',
    },
    'w993gjd3': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // edit_reference
  {
    'vl3bjbx4': {
      'en': 'Edit Bank Reference',
      'es': 'Editar referencia bancaria',
      'pt': 'Editar Referência Bancária',
    },
    'pw3f028s': {
      'en': 'Fill in all the fields',
      'es': 'Rellena todos los campos',
      'pt': 'Preencha todos os campos',
    },
    'bgtz7tfc': {
      'en': 'Bank Name',
      'es': 'Nombre del banco',
      'pt': 'Nome do banco',
    },
    'nrr9hsdo': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'cmnsyy9m': {
      'en': 'Account Type',
      'es': 'Tipo de cuenta',
      'pt': 'tipo de conta',
    },
    '5mmk9o48': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'twx0808l': {
      'en': 'Contact Person',
      'es': 'Persona de contacto',
      'pt': 'Pessoa de contato',
    },
    'ktkvlf2u': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'o6y70718': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'h40tzluy': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'wf8ok31z': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
  },
  // commercial_reference
  {
    '4dr05q94': {
      'en': 'Create Commercial Reference',
      'es': 'Crear Referencia Comercial',
      'pt': 'Criar Referência Comercial',
    },
    '7dokw2uo': {
      'en': 'Fill in all the fields',
      'es': 'Rellena todos los campos',
      'pt': 'Preencha todos os campos',
    },
    'xwteoa0e': {
      'en': 'Company Name',
      'es': 'nombre de empresa',
      'pt': 'nome da empresa',
    },
    'x2w02j7a': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'qiwjntle': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'gw324dwa': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'sbus37v1': {
      'en': 'Contact Person',
      'es': 'Persona de contacto',
      'pt': 'Pessoa de contato',
    },
    'vbso6sld': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'jfr4bfuu': {
      'en': 'Relationship with Company',
      'es': 'Relación con la empresa',
      'pt': 'Relacionamento com a Empresa',
    },
    'j779bflt': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'm89p7rmm': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar referência',
    },
  },
  // MoreCommReferencia
  {
    'nur7iuwp': {
      'en': 'Edit ',
      'es': 'Editar',
      'pt': 'Editar',
    },
    'wpc6u0cw': {
      'en': 'Delete ',
      'es': 'Borrar',
      'pt': 'Excluir',
    },
    'rydfw1h3': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // edit_Commreference
  {
    'bhnjz86i': {
      'en': 'Edit Commercial Reference',
      'es': 'Editar Referencia Comercial',
      'pt': 'Editar referência comercial',
    },
    'drjcsj9e': {
      'en': 'Fill in all the fields',
      'es': 'Rellena todos los campos',
      'pt': 'Preencha todos os campos',
    },
    'u87107tq': {
      'en': 'Company Name',
      'es': 'nombre de empresa',
      'pt': 'nome da empresa',
    },
    'oz7oyxr9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '2bft4sce': {
      'en': 'Company Adress',
      'es': 'Dirección de la empresa',
      'pt': 'Endereço da empresa',
    },
    'g6bghfgl': {
      'en': '',
      'es': '',
      'pt': '',
    },
    's7c8lq9l': {
      'en': 'Contact Person',
      'es': 'Persona de contacto',
      'pt': 'Pessoa de contato',
    },
    'bo66097a': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'cqyrdob3': {
      'en': 'Relationship with Company',
      'es': 'Relación con la empresa',
      'pt': 'Relacionamento com a Empresa',
    },
    'ua1b49gw': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'nytv984p': {
      'en': 'Save changes',
      'es': 'Guardar cambios',
      'pt': 'Salvar alterações',
    },
  },
  // beneficiary_crate
  {
    'mwm7urct': {
      'en': 'BENEFICIARY DESIGNATION',
      'es': 'DESIGNACIÓN BENEFICIARIA',
      'pt': 'DESIGNAÇÃO DO BENEFICIÁRIO',
    },
    '378w2o93': {
      'en': 'hereby designate as Beneficiaries the following persons:',
      'es': 'designan como Beneficiarios a las siguientes personas:',
      'pt': 'designar como Beneficiários as seguintes pessoas:',
    },
    'wcevvu4p': {
      'en': ' Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'dt8rdeqp': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'gdv2wlsv': {
      'en': 'ID No. ',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'ib93lozw': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'xvib209y': {
      'en': 'Address',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    '30xmba27': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'w2m47zia': {
      'en': 'Phone No',
      'es': 'Telefono no',
      'pt': 'Telefone não',
    },
    '7ntqks7v': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'gpnj4rvg': {
      'en': 'Email Address ',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'ah8vpfkq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'kiuuvb9r': {
      'en': ' Percentage',
      'es': 'Porcentaje',
      'pt': 'Percentagem',
    },
    'cicijti4': {
      'en': '.%',
      'es': '.%',
      'pt': '.%',
    },
    'pejswdsq': {
      'en': 'Create Beneficiary',
      'es': 'Crear Beneficiario',
      'pt': 'Criar Beneficiário',
    },
  },
  // mobileNavAfiliate
  {
    'meex58qn': {
      'en': 'Referrals',
      'es': 'Referencias',
      'pt': 'Referências',
    },
    'd8u37yu8': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    'h9ssq829': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
  },
  // mainWebNavAfiliate
  {
    'pd0qb7k7': {
      'en': 'Profile',
      'es': 'Perfil',
      'pt': 'Perfil',
    },
    '3y1h28dv': {
      'en': 'Referrals',
      'es': 'Referencias',
      'pt': 'Referências',
    },
    '68d9fw2v': {
      'en': 'Settings',
      'es': 'Ajustes',
      'pt': 'Configurações',
    },
    '4sjmvb7u': {
      'en': 'Log Out',
      'es': 'Cerrar sesión',
      'pt': 'Sair',
    },
  },
  // devNotice
  {
    'sng1xsna': {
      'en': 'Thanks for your interest!',
      'es': '¡Gracias por tu interés!',
      'pt': 'Obrigado pelo seu interesse!',
    },
    'opztfh10': {
      'en': 'Under Development',
      'es': 'En desarrollo',
      'pt': 'Em desenvolvimento',
    },
    'qnrsp9i1': {
      'en':
          'We are currently working hard to develop this product so that we can offer you an even better experience. We apologize for any inconvenience this may cause and appreciate your patience. Stay tuned for updates, we are excited to share the new features with you very soon!',
      'es':
          'Actualmente estamos trabajando arduamente para desarrollar este producto para que podamos ofrecerle una experiencia aún mejor. Pedimos disculpas por cualquier inconveniente que esto pueda causar y agradecemos su paciencia. Estén atentos a las actualizaciones, ¡nos complace compartir las nuevas funciones con ustedes muy pronto!',
      'pt':
          'Atualmente, estamos trabalhando duro para desenvolver este produto para que possamos oferecer a você uma experiência ainda melhor. Pedimos desculpas por qualquer inconveniente que isso possa causar e agradecemos sua paciência. Fique atento às atualizações, estamos ansiosos para compartilhar os novos recursos com você em breve!',
    },
    'qzuaiwni': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // CONTRACTOFBANKING
  {
    '1xpszdbz': {
      'en': 'SINGLE CONTRACT OF BANKING PRODUCTS AND SERVICES',
      'es': '',
      'pt': '',
    },
    'n3330dms': {
      'en': 'ATLAS BANK (PANAMA), S.A.',
      'es': '',
      'pt': '',
    },
    '3d1ho7zt': {
      'en':
          'This Single Contract of Banking Products and Services (hereinafter THE CONTRACT) governs the relationship\nbetween the Client subscribed to this CONTRACT (hereinafter THE CLIENT) and Atlas Bank (Panama), S.A.\n(hereinafter THE BANK), regarding the use of any or all banking services whose terms and conditions are contained\nin THE CONTRACT, and is applicable both to THE CLIENT and his successors under any title, and assignees\napproved by THE BANK. It is also understood that THE CLIENT, with the approval of THE BANK, can subsequently\ncontract the banking services regulated in THE CONTRACT and that have not been contracted initially, for which\nTHE CLIENT must subscribe to a new Application for Activation of Banking Services (hereinafter the Activation\nApplication) that includes the new banking service(s) contracted by the CLIENT. The Activation Application, as well\nas any annexes, addenda, pamphlets, flyers and other documents related to the respective product or service and\ncommunicated to THE CLIENT by THE BANK, is an integral part of THE CONTRACT.',
      'es': '',
      'pt': '',
    },
    'mogd2rix': {
      'en': 'Definiciones',
      'es': 'Firmas autorizadas',
      'pt': 'Assinaturas Autorizadas',
    },
    'ul3f7at4': {
      'en':
          'I. DEFINITIONS\n1. THE BANK: Atlas Bank (Panamá), S.A. is a company incorporated under the laws of the Republic of Panama,\nduly registered in Folio 155634281, Seat one (1), of the Mercantile Section of the Public Registry, with RUC No.\n155634281-2-2016 DV 54 of the Microfilm Section (Mercantile) of the Public Registry.\n2. THE CLIENT: An individual or legal entity (corporation) who signs THE CONTRACT, and owns a deposit\naccount with THE BANK. These persons will be appointed by him in any account(s) or Banking Services which\nincludes his successors and the persons who are authorized by him to perform any banking operation, withdraw,\ndispose of the funds deposited in THE BANK and give instructions to THE BANK, or to the person(s) that is (are)\nparties to this CONTRACT by means of their inclusion through an Activation Application of any banking service or\nby signing the signature cards of the account(s), according to and reflected in the records of THE BANK. Therefore,\nthe references to THE CLIENT in this CONTRACT shall apply and bind each and every one of the persons who\nhold the status of CLIENT, and their successors, agents or representatives thereof, who declare that they accept\neach and every term and condition provided in this CONTRACT. The Activation Application is an integral part of\nTHE CONTRACT, in which the general details of THE CLIENT are detailed, as well as the detailed description of\nthe banking services contracted.\n3. AUTHORIZED PERSONS: Is (Are) the individual person(s) authorized by THE CLIENT to manage and/or\nprovide instructions individually or jointly of the product or service contracted by THE CLIENT with THE BANK, duly\nauthorized(s) in the documents provided by THE BANK for this purpose, who agree to abide by the terms covered\nby this CONTRACT from the moment their signature(s) is(are) recorded in the Activation Application of any banking\nservice or product or by signing the signature(s) forms of the deposit account(s), as recorded and filed with THE\nBANK. The condition of “authorized persons” is subject to THE BANK verifying the accuracy of the information\nprovided by THE CLIENT. For the purposes of this CONTRACT, THE CLIENT and AUTHORIZED PERSONS, will\nbe considered as THE CLIENT.\n4. GENERAL CONDITIONS: Those terms and conditions that are an integral part of the banking policies of THE\nBANK and by which all and each of the contracts and / or procedures or obligations are governed within THE BANK.\n5. SPECIFIC CONDITIONS: Those terms and conditions specific to each banking service or product indicated in\nthis CONTRACT, and requested by THE CLIENT, including those that from time to time are incorporated by THE\nBANK to this CONTRACT.\n6. BANKING SERVICES: Any product or service contracted by THE CLIENT and which THE CLIENT receives\nfrom THE BANK, either directly or through a third party, and which may be regulated or not, by this CONTRACT or\nany other document, including credit facilities.\n6\n7. FORMULARIO DE APERTURA DE CUENTA: Son los documentos que debe completar y suscribir EL\nCLIENTE para la apertura de la(s) cuenta(s) de depósito con EL BANCO. Las cuentas de personas naturales son\npropiedad del(los) CLIENTE(S). No pueden utilizarse con fines de negocio y son intransferibles. Estas cuentas se\nrigen por las leyes y reglamentos de la República de Panamá.\n8. FORMULARIO DE TARJETAS DE FIRMA: Se describe como el documento que contiene la firma de EL\nCLIENTE y/o personas autorizadas para girar contra la(s) cuenta(s) con EL BANCO, la cual debe ser igual a la\nfirma que aparece en el documento oficial de identificación personal. En caso de nacionales y extranjeros\nresidentes en Panamá, es la cédula de identidad personal vigente y en caso de extranjero no residentes el\npasaporte vigente.\n9. FORMULARIO SOLICITUD DE ACTIVACIÓN DE SERVICIOS BANCARIOS: Se refiere al documento que\nsuscribe EL CLIENTE para solicitar cualquiera de los productos y/o servicios bancarios ofrecidos por EL BANCO.\n10. NÚMERO DE IDENTIFICACIÓN PERSONAL (PIN): Es el número de identificación personal confidencial, en\nadelante conocida como PIN, el cual es proporcionada por EL BANCO a EL CLIENTE para que sea utilizado por\neste en todos y aquellos servicios bancarios que así lo requiera. EL CLIENTE será responsable por el uso, el\ncuidado y la confidencialidad del PIN.\n11. CONTRATO ÚNICO DE PRODUCTOS Y SERVICIOS BANCARIOS: Este contrato que recoge los términos\ny condiciones que regulan el manejo de los servicios y productos contratados por EL CLIENTE con EL BANCO.\n12. PARTES: Son EL BANCO y EL CLIENTE.\n13. CUENTAS: Significa la relación contractual que se establece entre EL BANCO y EL CLIENTE y, por la cual EL\nBANCO recibe dinero en depósitos de EL CLIENTE, por medio de cuenta(s) de depósito que pueden ser cuenta(s)\ncorriente(s) y/o cuentas de ahorro(s), dejando constancia de los depósitos y retiros en los registros de EL BANCO\ny/o en los estados de cuenta, físicos o en banca en línea para atender los pagos de cheques, giros u otros efectos\nlibrados por EL CLIENTE contra EL BANCO.\n14. SERVICIOS DE BANCA ELECTRÓNICA: Significa servicios bancarios ofrecidos por EL BANCO a través de\nmedios o canales electrónicos, los cuales pueden consistir en servicios ofrecidos en la actualidad o en el futuro\ncomo banca por internet, banca móvil, banca por teléfono, terminales de puntos de venta, (POS), mensajería\ninstantánea (chat), redes sociales, correo electrónico, firma electrónica, dinero electrónico, red ACH, redes\nespecializadas, cajeros automáticos, monedero o pago móvil, tarjeta bancaria con circuito integrado, medios de\npago electrónico o cualquier otro medio o canal electrónico.\n15. SERVICIOS DE BANCA EN LÍNEA: Significa el sistema de banca por internet que EL CLIENTE puede\nacceder directamente mediante Internet o cualquier otro medio electrónico para realizar transacciones o servicios\nofrecidos por EL BANCO a través de este medio.\n16. SUPERINTENDENCIA: Ente regulador de EL BANCO y protector de los usuarios de los servicios bancarios.\n17. SOBREGIRO: Es el saldo deudor a favor de EL BANCO que refleja la cuenta de EL CLIENTE, el cual ha sido\npreviamente autorizado por EL BANCO.\n18. USUARIO DE LOS SERVICIOS BANCARIOS: Es EL CLIENTE.',
      'es': '',
      'pt': '',
    },
    '6hb01rut': {
      'en': 'General Conditions',
      'es': 'Firmas autorizadas',
      'pt': 'Assinaturas Autorizadas',
    },
    'rr0rupfp': {
      'en':
          'II. GENERAL CONDITIONS\n1. APPLICABLE TERMS AND CONDITIONS:\na. General Conditions: Apply to each of the Banking Products and Services provided by THE BANK to THE\nCLIENT; as well as all other operations and transactions typical of the banking activity,even if they are not contemplated in this CONTRACT as a banking service, as long as they do not include\ntheir own general terms and conditions, in which case they would apply by default.\nb. Specific Conditions: Refers to the Specific Conditions contained in Section III of this Banking Products\nand Services Contract, unless expressly provided otherwise, which will apply only to the Banking Service\nthat they specifically regulate.\nc. General Conditions and Specific Conditions: Will apply independently to each of the Banking Products\nand Services that THE CLIENT will use with THE BANK, from the date on which each service is activated\nand contracted.\n2. VALIDITY OF THE CONTRACT\nThis CONTRACT is for an indefinite period, and any of the parties may terminate it by giving written notice with a\nduly signed letter. However, THE BANK reserves the right to cancel this CONTRACT at any time for legal, judicial\nor other reasons. The validity of THE CONTRACT is conditioned upon the existence of contracted banking services.\nHowever, the mere cancellation or termination of a banking service does not entail the immediate termination of THE\nCONTRACT if there are other banking services contracted and in force.\n3. LEGAL DISABILITY\nIf THE BANK does not receive written notification that puts on notice the inability of THE CLIENT to dispose of his\n/ her account(s), THE BANK will not be responsible for any kind of damage or losses that THE CLIENT may suffer\nbecause of that disability.\n4. CHANGES IN LEGAL ENTITY (CORPORATION)\nIn the case of legal entity (corporation), THE CLIENT undertakes to notify THE BANK immediately in writing and to\nthe satisfaction of THE BANK, regarding all agreements, actions, circumstances or events related to its legal status\nor administrative and social structure, including any changes or modification of its Articles of Incorporation and / or\nstatutes, as well as the integration or structure of its corporate bodies, the granting, alteration or revocation of powers\nand mandates, appointment and dismissal of directors, dignitaries and officers of THE CLIENT. For such purposes,\nthe registration and registration in the Public Registry and / or the publication of such changes to bind THE BANK\nwill not suffice, but, on the contrary, it will be necessary for them to be notified in writing and to the satisfaction of\nTHE BANK that it has been duly notified by them, leaving THE BANK relieved of all responsibility if it performs\noperations based on the information contained in its files.\n5. CHANGE OF ADDRESS\nTHE CLIENT agrees to notify THE BANK, to the satisfaction of the latter, of any change in their address, as soon\nas said change takes place. It is understood that the last address registered in the files of THE BANK will be\npresumed correct and, therefore, any correspondence addressed to or delivered to THE CLIENT at said address\nwill be presumed duly sent.\n6. SOLIDARITY\nIf the designated account(s) has more than one owner or signatory, it will be understood that they act jointly and\nseverally with THE BANK. Therefore, any individual act of the owners or signatories with THE BANK, will be\nconstrued in representation of, and oblige, the others.\n7. SIGNATURES AND ENDORSEMENTS\nIf the event of forgery of any signature of THE CLIENT or of the authorized person(s) to endorse a document, THE BANK will only act if these had been so notoriously falsified or forged that special knowledge is not required to notice\nany difference with the Register of Signatures of THE CLIENT maintained and filed with THE BANK and in case of\nendorsement, compared to the identification document. Consequently, THE CLIENT releases THE BANK from\nresponsibility for the payment of checks or payment orders or falsified endorsements, except in the case of gross\nnegligence on the part of THE BANK. THE CLIENT acknowledges that, in this and other banking jurisdictions, THE\nBANK, acting as collection agent of THE CLIENT, will have to guarantee the authenticity of the endorsements that\nappear in the checks in question to demand or receive the payment of the same and, consequently, THE CLIENT,\nat his own risk, authorizes THE BANK to give such guarantee, where the CLIENT commits to reimburse THE\nBANK any amount that he has to pay to third parties for the reason of granting of the aforementioned guarantee.\n8. IDENTITY VERIFICATION\nTHE CLIENT must present proof of identity to THE BANK. Consequently, any damages or losses resulting from\nhaving delivered to THE BANK any instructions, documentation, checks, identity documents, signatures or\nspecimens of signatures, emails, faxes, conventional identification agreements or other legitimation, that are false,\nforged, altered or otherwise legally insufficient, shall be covered by THE CLIENT, unless THE BANK has incurred\ngross negligence.\n9. ORDERS AND INSTRUCTIONS OF THE CLIENT\nIn all those cases in which THE BANK provides forms to issue orders or instructions, THE CLIENT must make use\nof them to impart such orders or instructions, completing them correctly, clearly and fully.\nIn all those cases in which the orders and instructions can be given through the Electronic Banking Service, THE\nCLIENT may impart them through said channel, following the procedure set forth by THE BANK for such purposes.\nIn all those cases in which THE BANK has not arranged in a specific way for THE CLIENT to impart certain types\nof orders or instructions, they must be in writing and must comply with the other requirements that THE BANK\nrequires in each particular case.\nTHE BANK is not obligated to comply with orders and instructions given orally (either personally or by telephone or\nin any other verbal way). When THE BANK receives verbal instructions, THE CLIENT must confirm them in writing\nand to the satisfaction of THE BANK as soon as possible, at the discretion of THE BANK to comply or not until they\nare received in writing and to their satisfaction.\nTHE BANK will not respond to an order or instruction made if due to carelessness, error, omission, inadvertence,\nnon-compliance or without properly completing the corresponding forms or made without having properly followed\nthe corresponding electronic banking procedure or made verbally without written confirmation and compliance with\nthe other specific requirements that THE BANK would require in each particular case. All orders and instructions\nmust be provided clearly and accurately.\nTHE BANK will not be responsible either for the damages derived from delays or difficulties in the functioning of\nany means of communication nor assumes any responsibility for the damages that result from errors, faults or\nmisunderstandings in the reception or transmission through them.\n10. ELECTRONIC INSTRUCTIONS\nAny instructions given by THE CLIENT to THE BANK verbally, by means of an email or by any other conventional\nmeans, must be provided in writing clearly and precisely. When THE BANK accepts instructions via telephone,\nverbally, telegraphic or other similar method, the CLIENT must confirm them by means of Electronic Instructions,\nthrough stamps, fax or any scanned document. \n\nTHE BANK will not be obligated to comply with the orders transmitted by telegraph, telex or telephone or\nother means of communication, unless the authenticity of the same is guaranteed through the “Call Back”\nprocess done by THE BANK.\n11. DEPOSIT(S) OF FUNDS IN ACCOUNT(S)\nAll deposits that will be made to the account(s) of THE CLIENT must maintain or comply with the following terms\nand conditions:\na. Any deposit(s) must be made through the means and processes assigned by THE BANK, for this purpose,\nTHE CLIENT must provide clear, accurate and correct information, which will be requested by THE BANK for\nits effective execution.\nb. In order for THE BANK to accept the deposits, THE BANK must validate the origin and legitimacy of the\nfunds.\nc. At the moment in which the funds are received by THE BANK, it reserves the right to reverse the funds\nreceived should said funds are deemed false or illegitimate.\nd. THE BANK may reject any unusual deposit or transaction to the account(s) of THE CLIENT.\n12. WITHDRAWAL OF FUNDS IN ACCOUNTS:\nAny withdrawal of funds made in the account(s) of THE CLIENT must comply with the following:\na. All withdrawals must be made through the processes assigned by THE BANK. THE CLIENT will be\nresponsible for correctly providing all instructions and data, which are required by THE BANK to execute\nthe transaction.\nb. The instructions must be signed by THE CLIENT and/or said AUTHORIZED PERSONS in the account(s) or\nindicated by the corresponding minutes, when applicable, and they must be registered in the files of THE\nBANK.\nc. THE BANK reserves the right not to execute any type of instruction or transaction made by THE CLIENT, if\nat its sole discretion, the transaction or instruction does not meet the transaction profile established by THE\nCLIENT.\n13. MINIMUM BALANCE IN THE ACCOUNTS\nTHE CLIENT must maintain at all times the minimum balance established by THE BANK deposited in their\naccount(s), as indicated by THE BANK and based on its policies that may change at the discretion of THE BANK. In\nthe event that THE CLIENT does not maintain such minimum balance, THE BANK is authorized to collect those\ncharges that apply based on the latest published Fee Table.\n14. CLOSURE OF ACCOUNTS\nTHE BANK may, at any time and without the need of just cause, close any deposit or credit account of THE CLIENT\nand terminate any type of service, as well as declare as expired any obligation that THE CLIENT has contracted\nwith THE BANK. For such purposes, THE CLIENT must cancel any outstanding balance owed to THE BANK related\nto their account, and, if applicable, THE BANK will cancel by check any outstanding balances due to THE CLIENT.\n15. DISCLAIMERS\nIn all those cases in which THE CLIENT is responsible to THE BANK for being a signatory, grantor, debtor, cosigner, drawer, acceptor, beneficiary, endorser, or guarantor, they resign to the address and all notifications, notices,\nrequirements, benefits (of order, excuse and division), diligences, presentations and protests that THE BANK had\nor had to do by uses, customs, or by legal provision.\n\n16. PRIOR NOTIFICATIONS TO THE BANK\nTHE CLIENT undertakes to provide THE BANK with complete and true information. If part of the personal information of\nTHE CLIENT changes, becomes inaccurate or loses relevance, THE CLIENT is obligated to notify THE BANK so\nthat it may modify its records. THE CLIENT acknowledges that the services within THE CONTRACT are being used\nexclusively for their benefit and that of those persons who are also signatories thereof, as applicable. If this is not the\ncase, THE CLIENT is obligated to notify and provide THE BANK with the details of third-party beneficiaries of the\nservices provided under THE CONTRACT and the corresponding relationship.\nOnly the CLIENT can provide notification(s) that refer to: the opening, activation or modification of a PRODUCT or\nBANK SERVICE, the inclusion or elimination of a CLIENT or Authorized Signature in any of the BANK SERVICES\noffered by THE BANK.\n17. CLIENT CLAIMS\nAny type of objection or claim on the part of THE CLIENT by reason of any notice, notification, as well as the\nobjection or claim by reason of the execution or lack of execution by THE BANK of any type of instruction of THE\nCLIENT, should be submitted within ten (10) calendar days following the date of receipt of notification notice or the\ndate of the order; otherwise it will be presumed that THE CLIENT has given his authorization or acceptance. Any\nloss resulting from a late claim and not submitted within the stipulated time must be assumed by THE CLIENT.\n18. DEPOSITS FOR TRANSFERS IN ANOTHER CURRENCY\nTHE BANK may receive instructions to execute transfers in a currency other than dollars, legal currency of the\nUnited States of America, and for such purposes THE BANK must execute the exchange at the rate offered by THE\nBANK and in effect at that date. If for any reason the transfer received is claimed by the sending bank, THE CLIENT\nmust pay the difference on the agreed exchange rate for the execution of the transaction.\n19. DEBIT OF OBLIGATIONS OR CREDIT CORRECTIONS\nTHE CLIENT authorizes THE BANK to charge to their account(s) and to any other accounts that THE CLIENT has,\nwhether they be savings, current, certificate of deposit, or guarantee, the amount of any obligation or document\nrepresentative of existing obligation in favor of THE BANK, including interest, commissions and expenses, be they\ndebtor, co-debtor or guarantor, without the need for prior notice.\nThe credits or annotations made in error to an account of THE CLIENT may be canceled unilaterally by THE BANK\nthrough the corresponding debit. In the event that THE CLIENT has made use of the funds thus accredited, they\nare obligated to return the principal and interest at the request of THE BANK. Similarly, as any credit made by THE\nBANK to an account of THE CLIENT by reason of the deposit of a check or the negotiation of a document is subject\nto the condition that said check or document be paid when due, it is agreed that, if not paid on that date, THE BANK\nis authorized to make the corresponding debit, being able, in addition, to collect any interest caused.\nTHE BANK may also debit the account(s) unilaterally if, after having credited the value of a document to an account\nof THE CLIENT, any of the following events occur, namely: (i) if it obtains unsatisfactory information about any of the\nparties; (ii) if the financial position of a party deteriorates substantially; (iii) if the currency in which it is expressed\ndecreases in value or is subject to exchange controls or a moratorium is declared in the country issuing it or where it\nshould be paid; (iv) if any signature is false or has been placed without authorization; (v) if there is any alteration of\nthe same; (vi) if it cannot be presented for acceptance or payment for reasons not attributable to THE BANK. The\ndebit can be made even when the documents cannot be returned. \n\n20. PAYMENTS\nTHE BANK may reject the payment or payment order in any of the following circumstances:\na. Lack of funds or consultation with issuer: this means that there are insufficient funds in the account against\nwhich the check was drawn.\nb. Suspension of payment: THE CLIENT requested that the check not be paid.\nc. Post-dated: the check was issued with a future date.\nd. Expired check: the check date indicates that it was issued three (3) or more months from receipt.\ne. Closed account: the account of origin of funds is closed.\nf. Uncompensated funds: the funds of the account against which the check was issued have been retained.\ng. Check substantially altered: THE CLIENT indicates that the check was altered without authorization.\nh. Fake check: THE CLIENT denies having issued the check.\ni. Irregular signature: the signature on the front of the check does not match the usual signature of the person\nwho allegedly signed it.\nj. Signature forgery: the signature on the front of the check does not belong to the person who allegedly\nsigned it.\nk. False endorsement: the check has been endorsed with a signature that does not correspond to the person\nwho supposedly endorsed it.\nl. Discrepancy between the amount in numbers and in letters: the amounts in numbers and letters written on\nthe check do not match.\nm. Any reason that THE BANK considers that it should not proceed with the payment of the check or payment\norder.\n21. NOTIFICATIONS AND CORRESPONDENCE BY THE BANK\nUnless a form of notice or notification by THE BANK has been previously stated in the Specific Conditions for an\naccount or service contained in THE CONTRACT, or in a subtitle contained in the General Conditions in THE\nCONTRACT, any notice or notification by THE BANK to THE CLIENT will be made, at the sole discretion of THE\nBANK, by any of the following methods with sufficient prior advance notice of the effective date of the subject and\nshall be understood as received by THE CLIENT on the dates established for each case indicated below:\na. By letter sent by mail to the last address of THE CLIENT registered in the files of THE BANK, in which\ncase the notice or notification shall be deemed given and received after a period of 15 days counted from\nthe date of the letter.\nb. By personal delivery at the last address of THE CLIENT registered in the files of THE BANK, in which case\nthe notice or notification shall be deemed given and received on the date shown on the acknowledgment of\nreceipt.\nc. By an announcement that will be published one (1) time in a newspaper of national circulation, in which\ncase the notice will be understood as given and received on the same date of publication.\nd. By placing the corresponding notice in a visible place in the offices of THE BANK for a period of thirty (30)\ndays, in which case the notice shall be deemed given and received after 30 days have passed since the\ndate of the placement of the notification.\ne. By means of a banner or notice shown on THE BANK´s website, in which case the notice shall be deemed\ngiven and received on the date on which it appears for the first time on THE BANK´s website.\nf. In the event that THE CLIENT has Online Banking Service, by means of a notice or communication sent\nthrough the Online Banking system, in which case the notice shall be deemed given and received on the\ndate of its first publication through Online Banking.\ng. By telephone call made to the last telephone number (landline or cellular) of THE CLIENT registered in\nthe files of THE BANK, in which case the notice will be understood as given and received at the time of\nthe call.\nh. By any other mass means of communication, in which case the notice shall be deemed given and received\non the same date of its communication\n\n22. DISCLAIMER OF LIABILITY\nTHE BANK will only be responsible for the damages or losses caused to THE CLIENT when in the act or omission\non the part of THE BANK has mediated fraud or gross negligence.\nIn particular, THE BANK will not be responsible for the damages or losses suffered by THE CLIENT, in any of the\nfollowing cases:\na. If these have resulted, either directly or indirectly, from disruption or temporary interruption in the banking\nservices, due to unforeseeable circumstances or force majeure or by provision or action of the Panamanian\nauthorities or from abroad.\nb. For the execution of telephone, electronic, verbal, fax, telegraphic or other similar orders by THE CLIENT.\nc. If the erroneous execution of the orders or instructions of THE CLIENT, is due to the fact that such orders\nor instructions have contained incorrect, incomplete, erroneous, or divergent data, or that a correct\ninterpretation is impossible.\nd. If the funds or securities deposited in THE BANK are affected by taxes, duties or by the availability of all or\npart of the goods or securities deposited due to exchange controls, seizures, acts of authority or for any\nreason out of control of EL BANK.\ne. In the event of theft or loss of checks, debit cards, authorizations, withdrawals and orders for payment and\nany other documents, whether or not the event has been timely reported to THE BANK or that it has not\nbeen communicated or that in any other way the will of THE CLIENT has not been expressed.\nf. By the fraudulent use of PIN or fraudulent funds disposal of the accounts of THE CLIENT through any\nElectronic Banking Service provided by THE BANK now or in the future.\ng. Due to disturbances in banking services or by provisions of Panamanian or foreign authorities or when\nTHE BANK, for important reasons in its judgment, must suspend or reduce, totally or partially, its services, for\na specific period of time, during working hours or days.\n23. TRANSFERS SENT AND RECEIVED\na. THE BANK may, at its discretion, convert to foreign currency the funds received by THE CLIENT at the\nexchange rate indicated by this bank on the date on which the funds are received, making decisive and\nfinal the event as reflected on the records and book entries of THE BANK, that such conversion has been\nmade.\nb. THE CLIENT assumes responsibility for and assumes the risks inherent in any exchange differences\ncaused by fluctuations in the currency markets.\n24. INFORMATION ABOUT THE CLIENT\nTHE CLIENT irrevocably authorizes the BANK to request and obtain any type of information and documents\nrelated to THE CLIENT, whether from offices or individuals or private companies, both domestic and foreign.\nTHE BANK and the persons who provide the information, are relieved of all responsibility for such action.\nTHE BANK, at its discretion, is authorized to verify the information provided by THE CLIENT and is relieved of all\nresponsibility in the event that it decides to verify such information. THE CLIENT undertakes to keep its information\nupdated at THE BANK at all times. THE CLIENT authorizes THE BANK to use the information provided to him for\nthe opening of an account and new services, as well as for the recommendation of financial products and services.\nTHE CLIENT authorizes THE BANK to obtain and use credit reports about his person and relieves from civil or\ncriminal liability any individual or person who, in the exercise of his / her duties within THE BANK, provides or obtains\nthis information.\n\n25. CREDIT REFERENCES\nTHE CLIENT expressly authorizes the BANK so that, in accordance with what is stated in article 24 and other\napplicable provisions of Law 24 of May 22, 2002, consult, provide or exchange information with other banks, external\nauditors, information agencies or economic agents of the locality or abroad, related to their credit history and\nrelations with creditors and with THE BANK and its affiliates.\nTHE CLIENT hereby expressly exonerates THE BANK, as well as its affiliated companies, subsidiaries, employees,\nexecutives, directors, officers or attorneys-in-fact, from any consequence or liability resulting from THE BANK\nrequesting or providing information, or for reason of any authorizations contained in this clause.\nThis authorization shall remain in force for THE BANK to execute as many times as necessary, at all times that THE\nCLIENT maintains any type of banking relationship with THE BANK.\nThe purpose for which the authorization established in this CONTRACT is granted is only for obtaining credit\ninformation.\nTHE BANK will not use the data collected for purposes other than those set forth in this CONTRACT or for purposes\nincompatible with those for which the data was collected and may be provided to another economic agent at the\nrequest of THE BANK regarding data that is regulated by Law 81 of March 26, 2019 regarding Data Protection.\n26. BANKING SECRECY\nThe collaborators of EL BANK have the obligation to maintain confidentiality regarding the identity of all the accounts\nof THE CLIENT, and of any business transactions related to them in the manner provided by the laws of the Republic\nof Panama. The accounts established in Atlas Bank (Panamá), S.A. are absolutely private. Notwithstanding the\nforegoing, THE CLIENT expressly authorizes THE BANK to supply and share by any means or procedure\ninformation about THE CLIENT or its operations related to this CONTRACT, without THE CLIENT being able to claim\nthat there has been an infringement on the confidentiality rights of THE CLIENT under banking confidentiality, when\nthere is a request and requirement of any supervisor, auditor or regulator of THE BANK, or by express mandate of\ncompetent authorities.\nTHE CLIENT declares that he is fully aware of the regulations in force regarding bank secrecy and the civil and\ncriminal responsibilities that may arise from money laundering (Criminal Code Articles 389 and 390). THE CLIENT\ndeclares that he knows his own personnel, that he has verified the information is provided to THE BANK by any\nmeans in order to obtain and establish this CONTRACT; that they recognize and accept this responsibility freeing\nTHE BANK of any future responsibility that emanates from this topic.\n27. CHARGES FOR BANKING SERVICES\nWith the signature of this CONTRACT, THE BANK will provide THE CLIENT with a FEE TABLE, containing detailed\ninformation on the monthly fees and service charges. THE CLIENT authorizes THE BANK to collect through the\ndebit of any account that they maintain with THE BANK, all charges, commissions and fees for the opening,\nmanagement, closing of account and for the other services and products offered by THE BANK in accordance with\nthe rates adopted from time to time. It is clear that THE CLIENT will pay all taxes, duties, fees, payments or\ncontributions that are owed, or will be subject to, on the products or services offered by THE BANK. In addition, THE\nCLIENT agrees to pay all fees and commissions associated with the products and services obtained from THE BANK,\ncontained in this SINGLE CONTRACT OF BANKING PRODUCTS AND SERVICES, in accordance with the rates\nestablished according to the type of service and indicated in the valid and updated FEE TABLE. THE BANK may,\nfrom time to time and at its sole discretion, modify the amounts of such fees, which will be notified to THE CLIENT\nin any of the forms indicated in Notifications and Correspondence by THE BANK.\n\n28. APPLICABLE LAW AND JURISDICTION\nFor all legal purposes, as well as the interpretation and fulfillment of this CONTRACT:\na. The CONTRACT will be governed by and will be interpreted in accordance with the laws of the Republic of\nPanama.\nb. Any controversy or conflict that may arise in relation to this contract shall be submitted to the courts of\njustice of the city of Panama, Republic of Panama.\nc. THE CLIENT agrees as its special address the City of Panama, Republic of Panama.\n29. COLLECTION OF THE SPECIAL INTEREST COMPENSATION FUND (FECI)\nTHE BANK, when applicable, will charge to the account of THE CLIENT, the surtax destined to the Special Interest\nCompensation Fund (FECI) or any other taxes, rate, contributions, liens or surcharges that in the future will be\nestablished on the contracted products or services, balances to finance, tax stamps, legal expenses, and\nnotarization costs.\n30. RETENTION OF CLIENT ACCOUNT STATEMENTS\nTHE BANK shall be entitled to retain the account statements related to any PRODUCT or BANKING SERVICE\nprovided by THE BANK and until THE CLIENT collects them in person. In such cases and for all legal purposes, the\naccount statements shall be considered as received by THE CLIENT from the date of issue. THE BANK reserves\nthe right to charge THE CLIENT for the provision of said service based on the applicable fees at the date of the\ncharge.\nTHE BANK is entitled to destroy all account statements, vouchers and other documents related to the account after\nthree months from the date of issuance, whether they were returned by mail or had not been collected by THE\nCLIENT in a timely manner.\nThe relations between THE BANK and THE CLIENT by reason of each banking service will be subject, by reason of\nthe specialty principle, to the terms contained in the Activation Application, the Specific Conditions, the General\nConditions, and the current applicable legislation, unless otherwise dictated by mandatory standards, in which case\nthey will be applied with preference to all previous ones.\n31. DEATH OF THE CLIENT\nIn case of death of THE CLIENT, THE BANK will check if the account has a Designation of Beneficiaries, to proceed\naccording to the instructions set out by THE CLIENT.\n32. INACTIVE ACCOUNT(S)\nThe account(s) will be considered inactive if there has not been carried out any transaction, nor request any account\nstatements within the previous five (5) years, in accordance with current legislation. If the account(s) continue to\nremain inactive, they could be subject to the transfer of funds to government authorities after a specific period of time\nand subject to certain legal formalities.\n33. LIMITATION OF LIABILITY\nNeither THE BANK nor any of its officers, directors, employees and agents will be liable to THE CLIENT for any\ndelay, loss, damage or inconvenience resulting from the provision or breach of a service under THE CONTRACT,\nexcept when these losses are the result of technical problems, errors of THE BANK or failures of systems that are\nthe sole responsibility of THE BANK. Also, neither THE BANK nor any of its officers, directors, employees and agents\nare liable for their acts or omissions or those of third parties.\n\n34. TAXES, DUTIES AND LEVIES\nTHE CLIENT will be responsible for all taxes, fees, duties or contributions of all kind that apply to transactions or\noperations performed by THE CLIENT. THE CLIENT is advised that offshore banking transactions may have tax\neffects in THE CLIENT’s residence country or jurisdiction. THE BANK will act as tax withholding agents only when\nthe law requires THE BANK to do so; otherwise, THE CLIENT will be responsible for paying taxes that affect the\naccount(s) of THE CLIENT, and said taxes, fees and contributions will be charged to any account of THE CLIENT.\n35. MODIFICATIONS\nTHE BANK may at its sole discretion modify or add to this CONTRACT, once or several times, in which case it will give a\nprior notice to THE CLIENT by means of an announcement that will be published through any of the means of\ncommunication established by THE BANK.\n36. INVALIDITY OR NULLITY\nIf any provision of this CONTRACT is considered at any time void, illegal or unenforceable, the provisions of this\nCONTRACT shall remain and be executed, to the maximum extent permitted by law, in accordance with the intention of\nthe parties. Any nullity or illegality of any provision will not invalidate this CONTRACT in its entirety, and will continue to be\nenforced as if it does not include the stipulation or provision declared void or illegal, and the rights and obligations of the\nparties will continue to be followed and observed in the manner interpreted by law.\n37. NONCOMPLIANCE\nIn case of breach or noncompliance by any of the parties of any of the clauses of this CONTRACT, the absence of a\nrequest or remedy by the other party shall not constitute in any way the tacit acceptance of abandonment or the loss of\ntheir rights under the CONTRACT; The affected party will retain all of their rights under this CONTRACT and may enforce\nthem at any time.\n38. TRANSFER\nTHE CLIENT may not transfer any rights or obligations contained in this CONTRACT without the prior written consent of\nTHE BANK.',
      'es': '',
      'pt': '',
    },
    'east9u8y': {
      'en': 'Specific Conditions',
      'es': 'Firmas autorizadas',
      'pt': 'Assinaturas Autorizadas',
    },
    'b7er0v8l': {
      'en':
          'III. SPECIFIC CONDITIONS\nA. TERMS AND CONDITIONS APPLICABLE TO DEPOSIT ACCOUNTS\n1. If THE CLIENT is more than one person, it is understood that any of them, acting individually, may dispose of\nthe deposit of funds consigned in the account, unless otherwise agreed with THE BANK. In any case, the use\nof the conjunctions “and”, “and / or” or “or” between the names of holders defined as THE CLIENT, will have the\nmeaning and consequences attributed to them by Law 42 of November 8, 1984 of the Republic of Panama.\n2. Only currency that is legal tender in the Republic of Panama and checks drawn on THE BANK or other banks\nwill be accepted for deposit in the account, unless THE BANK stipulates the availability of accounts in other\ninternational currencies. Refunds or return of funds to THE CLIENT are payable only at the offices of THE BANK,\nat the time a payment is made.\n3. If THE CLIENT is a legal entity (corporation), the changes related to its personnel, capacity, existence, articles\nof incorporation, by-laws, integration of its corporate bodies, appointment and removal of Directors, Officers and\nRepresentatives of THE CLIENT and in general all those that concern its administrative and social structure, will\nonly be recognized and accepted by THE BANK, after such changes have been notified to THE BANK in writing and THE BANK confirms, also in writing, that it has taken note of these changes. The same notification and\nacknowledgment of receipt shall apply to the granting and revocation of powers, whether THE CLIENT is a\nnatural person or a legal entity (corporation). Therefore, the advertising or publication of such changes, grants\nor revocations is not sufficient for them to bind or be recognized by THE BANK, but it is necessary to comply\nwith the notifications provided in this clause.\n4. THE CLIENT is the guarantor against THE BANK of the legitimacy of the checks deposited in the account for its\ncollection and, consequently, guarantees THE BANK that THE CLIENT has a good title over them; that the\naforementioned checks have not been altered, that the people who have issued, endorsed or guaranteed them\nhad the power to do so and that their signatures are authentic.\n5. THE CLIENT acknowledges that, in this and other banking jurisdictions, THE BANK, by acting as collection\nagent of THE CLIENT, will have to guarantee the authenticity of the endorsements that appear in the checks in\nquestion in order to demand or receive the payment of the same and, consequently, THE CLIENT, at his own\nrisk, authorizes THE BANK to give such a guarantee committing THE CLIENT to reimburse THE BANK for any\namount, which he has to pay to third parties for the granting of the referred guarantee.\n6. During the compensation process of checks drawn on other banks located in Panama, THE BANK is limited to\npresent them only through the compensation system in Panama, being obligated to return to THE CLIENT those\nthat are rejected in this jurisdiction. In the case of checks payable abroad, THE BANK is only obligated to send\nsuch checks by ordinary mail to one of its correspondent banks, in order for them to present them for payment\nunder their exclusive responsibility.\n7. In the event that the checks deposited in the account for collection are rejected by the issuing bank, THE BANK\nis not obligated to perform any measures aimed at preventing the expiration of the terms of the deposited checks.\nConsequently, THE BANK will not be responsible to THE CLIENT if, due to the lack of such actions, the terms\nof the issued checks are expired or voided.\n8. THE CLIENT agrees that all checks deposited in the account are received by THE BANK subject to their good\nstanding and collection and, consequently, will not be credited to the account until the issuing bank has paid,\nauthorizing THE BANK to debit the account the amount of the checks that for any reason, cannot be collected\nby THE BANK, as well as the ones that, having been collected by THE BANK and credited by it in the account\nof THE CLIENT must be reimbursed or returned to the issuing bank for having been, in the judgment of THE\nBANK, unduly paid by the respective issuing bank. The funds represented in checks not paid or drawn on by the\nissuing bank or reimbursed to it will not accrue interest.\n9. All instructions that THE CLIENT directs to THE BANK regarding any deposits must be made in writing.\nA.1 CURRENT ACCOUNT\n1. Current Account: This product is not remunerated. This type of bank account allows THE CLIENT to perform\nvarious transactions of payments and transfers.\n2. Minimum Amount: THE CLIENT must keep in the account a minimum balance established by THE BANK\notherwise THE CLIENT will be charged a commission when the balance in the account is lower than the one\nestablished in THE BANK’s Fee Table. THE CLIENT will be subject to, and responsible for, charges and fees if\nthe account is closed before six (6) months.\n3. Available Funds: THE CLIENT undertakes to maintain sufficient funds in the account(s) to meet any payment\ninstructions. THE CLIENT will be responsible for any interest, commissions or other charges that may apply for\nnot keeping sufficient funds in the account(s) to proceed with the payment instruction.\nSigning of Checks and Payments: THE CLIENT is required to sign the checks, orders and instructions of all\ntypes related to this account, with his signature, identical to that registered in THE BANK and to clearly indicate\nthe number of the account. In the event that THE CLIENT has registered a stamp (facsimile) or Electronic\nInstruction, said stamp will replace the signature of THE CLIENT, in which case it relieves THE BANK of\nresponsibility if the latter makes cash or changes a check drawn with the stamp or facsimile stolen, altered or\nfalsified. THE BANK shall pay those checks written by THE CLIENT in accordance with this contract, being\nauthorized to refuse the payment of any check or compliance with any order or instruction given by THE CLIENT\nif in the opinion of THE BANK such checks, orders or instructions or the signature of THE CLIENT are\nincomplete, altered, defective or counterfeit so as to release THE BANK from all responsibility.\n5. Checkbook: At the specific request of THE CLIENT through the appropriate forms, THE BANK will provide THE\nCLIENT with numbered checkbooks and at a cost charged to THE CLIENT’s respective account.\n6. Overdrafts: In those cases in which for any reason the account is overdrawn or uncovered, whether due to the\npayment of checks, debts, compensation, overdraft interest in the account or any other charges, THE CLIENT\naccepts and agrees hereunder, that the sum resulting and issued from the files of THE BANK and certified by a\nBANK representative will be true and liquidated. If the current account is overdraft, THE BANK will be entitled to\ncharge interest at the current bank rate and charge the current account of THE CLIENT, remaining THE BANK’s\nsole discretion whether to decrease, deny or close the overdraft facility to THE CLIENT.\nA.2 SAVINGS ACCOUNT\n1. Savings Account: It is defined as an aggregator product which has been designed for CLIENTS whose objective\nis to accumulate savings. This product will accrue interest on a monthly basis.\n2. Payment of Interest: The savings account will earn interest based on the rate established at the time by THE\nBANK for this type of product. THE BANK may incorporate a system of tiered rates with attractive interest rates\nin accordance with the amounts maintained by the CLIENTS in the accounts.\n3. Minimum Amount: The minimum opening amount and the average balance that the account must maintain, will\nbe established by THE BANK in its sole discretion. THE CLIENT will be subject to, and responsible for, charges\nand fees if the account is closed before six (6) months.\n4. Documentation for the Savings Account: The balances and extracts of bank movements of the account will be\ninformed to THE CLIENT through an account statement or THE CLIENT can view it through access to Online\nBanking. However, THE BANK will not give THE CLIENT any type of physical means to register its transactions,\nfor example, conventional savings books.\n5. Available Funds: THE CLIENT must keep in his savings account the funds available to cover or pay for any\nfixed instructions provided for payments. THE CLIENT is responsible and will be charged for any balance,\ncharges, commissions applicable for insufficient funds in the savings account.\nA.3 CERTIFICATE OF DEPOSIT\n1. Certificate of Deposit: Are accounts with agreed interest remuneration established by THE BANK. THE BANK\nat the time of opening a certificate deposit will provide the CLIENT with a Certificate of Deposit that will include\n\ninformation on the agreed interest rate, maturity instructions for the deposit, interest payment dates, as well as\nadditional terms that may apply.\n2. Rate and Payment of Interest: In the opening and renewal of the certificate of deposit, THE BANK, at its\ndiscretion and based on market conditions, will indicate the applicable rate for the certificate of deposit account,\nthe payment of interest and capital.\n3. Amount and Date: Is the amount and value date established for a certificate of deposit account which will be\nsubject to the receipt of the funds by THE CLIENT.\n4. Certificate of Deposit Renewal: Unless THE BANK receives different instructions from THE CLIENT, five (5)\nbusiness days before the expiration date, THE BANK will renew the Deposit (principal and interest due, if\napplicable), subject to the expiration instructions agreed upon in the deposit confirmation. In the absence of\ninstructions at expiration, the BANK will renew the deposit (principal and interest due) if the term of the deposit\nis less than one year, or renew the deposit (only the principal) and pay interest due to the Depositor at maturity\nif the deposit is equal to or greater than one year. All renewals will be for the same term as the original deposit,\nat interest rates offered by THE BANK for similar deposits, currently in force on the date of renewal and subject\nto the Terms applicable as of the date.\n5. Early Cancellation: Early withdrawals or cancellations of the certificate of deposit account will only be permitted\nthrough or by virtue of an order by the competent authority or by any pledge in favor of THE BANK by virtue of\nany default of the secured credit obligation of THE CLIENT.\nTHE BANK in this way and at its sole discretion may authorize the early cancellation of the certificate of deposit\naccount. THE CLIENT must send a duly signed request to THE BANK at least ten (10) days before the date on\nwhich THE CLIENT requires the availability of funds. It is understood that THE BANK, in its sole discretion, is\nentitled to charge any commission or handling costs for the request described above.\n6. Increases: The certificate of deposit cannot be increased before its maturity. Increments will only be allowed on\nthe maturity date of the certificate of deposit and if THE CLIENT at that moment decides to renew the Certificate\nof Deposit. Increments will only be allowed before their maturity date if previously agreed between THE\nPARTIES, and under terms and conditions established by THE BANK in its sole discretion.\n7. Partial or Total Withdrawal: THE CLIENT undertakes to maintain the certificate deposit throughout the agreed\nterm and during the term of its renewals, if applicable. Due to the foregoing, the certificate of deposit may not\nbe reduced or withdrawn before the date of its maturity or renewal.\n8. The Capitalization of Interest and Payment of Interest: The interest on the certificate of deposit can be capitalized\nonly at the maturity date and only at the discretion of THE BANK. The capitalization and payment of interest\nshall be governed according to what THE CLIENT has stipulated in the instructions given in the certificate of\ndeposit, at the time of opening or renewal of the certificate of deposit, as the case may be, understanding that\nsuch instructions must be imparted in a clear and precise manner and in the manner required and accepted by\nTHE BANK.\n9. Payment of Capital: Unless the certificate of deposit is renewed, THE BANK will pay the deposited funds on the\nmaturity date, and will do so in the manner stipulated in the instructions given at the time of opening or renewal\nof the certificate of deposit, as the case may be, it being understood that such instructions must be provided\nclearly and precisely and in the form required and accepted by THE BANK, unless the certificate of deposit\naccount is pledged as collateral. \n\n. Death of THE CLIENT: In the event of death of THE CLIENT and even though the certificate of deposit may be\nsubject to renewal, THE BANK will review if the certificate of deposit account has a Designation of Beneficiaries\nestablished, in order to proceed in accordance with the instructions of the present account holder.\n11. Assignment: The certificate of deposit is not transferable to third parties, that is, the ownership of the certificate\nof deposit is not modifiable, except in the case of prior authorization from THE BANK and as long as THE\nCLIENT and the transferee comply with all the requirements demanded by THE BANK and complete and sign\nall documents that THE BANK requires, in its sole discretion. The assignment process will incur a commission\ncharge which will be established by THE BANK.\n12. Pledge: THE CLIENT undertakes not to pledge, nor to encumber, nor alienate the funds, interests and / or rights\nrelated to the certificate of deposit, without the prior and written consent of THE BANK.\n13. New Deposits: The parties agree that THE CLIENT may instruct THE BANK to open new term deposits by\ndelivering the Activation Application, duly completed and signed, being understood that the new additional\ndeposit that are established will be subject to all the terms and conditions agreed by this CONTRACT.\n14. Compensation: THE BANK may at any time apply charges to the certificate of deposit account for any debt or\nobligation contracted that is in default or with outstanding balance by THE CLIENT with THE BANK until the\ntotal amount due to THE BANK is canceled.\n15. Minimum Terms: It is expressly understood that certificates of deposits must be agreed upon for a period of no\nless than thirty (30) days.\nB. TERMS AND CONDITIONS APPLICABLE\nTO LEASING OF SAFE DEPOSIT BOXES\nTHE BANK will offer its clients the service of leasing Safe Deposit Boxes whose numbering and / or identification, as well\nas the place of installation, will be detailed in the Activation Application, and its use will be subject to the following\nconditions:\n1. THE BANK will charge an annual fee for the lease, as established in the Activation Application, plus\ntheapplicable transfer tax of goods and services (ITBMS). THE BANK, in its sole discretion, may increase or\nreduce the aforementioned annual cost, and for this purpose, it shall be communicated to the CLIENT in writing\nand with prior notice.\n2. THE BANK undertakes to give access to the safe deposit box only to THE CLIENT, its representative or agent,\nand / or, to the authorized persons.\n3. Access to the Safe Deposit Box will be limited to the days, hours and rules set by THE BANK. The lessee may\nstore in the Safe Deposit Box the objects it deems convenient, provided they do not cause, or are capable of\ncausing, damage to the box, or that are dangerous or illicit substances, or that may lead to bad odors or\nemanations harmful to health. In case there are suspicions that the Safe Deposit Box contains objects that are\nnot allowed, THE BANK may require the lessee to personally and immediately withdraw all contents of the Safe\nDeposit Box or THE BANK be forced to proceed immediately to the forced opening of the Safe Deposit Box.\n4. The lessee is obligated for the safekeeping and return at the end of this CONTRACT of the two Safe Deposit\nBox keys which are provided to them. THE CLIENT will be responsible to THE BANK for the loss or non-return\nof these keys, and for the expenses that may be due to THE BANK, due to change of locks, acquisition of keys\nfor the new lock and opening of the Safe Deposit Box, in which case THE CLIENT authorizes THE BANK to\ncharge the account that the lessee must maintain with THE BANK.\n\nThe lessee will commit to THE BANK to maintain a savings or current account, for the purpose of collecting the\nannuity and any expense or damage caused by the lessee.\n6. This service will have a duration of one (1) year counted from the date of contracting the service. After this\nperiod of time, and there being no complaints by THE PARTIES, the Safe Deposit Box contract will be extended\nfor successive periods of one (1) year each, unless one of the parties communicates in writing their desire not\nto renew the service.\n7. It is understood and accepted that any of the parties may terminate the service here regulated at any time by\nsending written notice to the counterparty.\n8. Upon expiration of the term of THE CONTRACT, or if it is terminated in advance by THE BANK, if the tenant\ndoes not appear within ten (10) business days following the expiration or notification made by THE BANK, it\nmay open the Safe Deposit Box at the lessee’s expense before a Notary Public and two witnesses and consign\nthe content judicially or retain it in a closed and sealed envelope held in custody by THE BANK.\nC. TERMS AND CONDITIONS APPLICABLE\nTO ELECTRONIC BANKING SERVICE\nElectronic Banking means banking services offered by THE BANK through electronic means or channels, which may\nconsist of services offered today or in the future, such as internet banking (Online Banking), mobile banking, telephone\nbanking, POS terminals, (POS), instant messaging (chat), social networks, email, electronic signature, electronic money,\nACH network, specialized networks, ATMs, wallet or mobile payment, bank card with integrated circuit, media electronic\npayment or any other means or electronic channel.\n1. Conditions: It is understood that in order for THE CLIENT to receive ELECTRONIC BANKING SERVICES, they\nmust currently be the holder of a Current Account and Savings Account, and / or Certificate of Deposit, and / or\nDebit Card, and / or lines of credit, and / or maintain other products with THE BANK.\n2. Transactions: THE CLIENT may carry out all the transactions available in the ELECTRONIC BANKING\nSERVICES and at the same time you can make any other new transaction that is subsequently included in the\nsystem for which access to the user has been granted. THE BANK reserves the right to add, suspend and / or\ncancel any of the features available through the BANKING SERVICES ELECTRONICS, prior notice to THE\nCLIENT through the communication channels authorized by THE BANK.\n3. Availability of Funds: Transactions related to the payment of obligations, transfers of funds between accounts of\nTHE CLIENT and / or to third-party accounts through the ELECTRONIC BANKING SERVICES that THE CLIENT\nperforms through THE BANK, will be executed or completed as long as the amount of the transaction does not\nexceed the balance available in the account at the time of the debit of the funds within the transaction. Available\nfunds will be understood as all those funds not subject to withholding, including the funds available on credit\nlines that were associated with the account to which the charge is made, without prejudice to the regulatory\nrestrictions that may affect a particular transaction.\n4. Transaction Amount Limit: Monetary transactions made through the ELECTRONIC BANKING SERVICES\n(whether ACH transfers, international transfer requests, management check requests, service payments) may\nhave restrictions according to internal policies and controls of THE BANK, which THE BANK reserves the right\nto make changes at any time. THE BANK will notify THE CLIENT should it deem necessary to inform of any\nchanges in these policies.\n5. Fee Charges: THE BANK may charge fees and / or commissions for monthly or annual membership for the ELECTRONIC BANKING SERVICES and for the use of the Security Devices, which shall be communicated to\nTHE CLIENT in a timely manner by any means THE BANK designates. Any fees or commissions that THE\nBANK determines to charge for the use of any channel or service, Security Devices and / or transactions will\nbe debited from the primary account that THE CLIENT has designated with THE BANK.\n6. Security: The management and use of electronic devices such as phones, cell phones, tablets, computers,\nemail or others, for the use of Electronic Banking Services is the entire responsibility of THE CLIENT as well as\nthe confidentiality nature of the information used or received on the transactions or any other information through\nthe use of the Electronic Banking Services. THE BANK is not responsible for the unauthorized access or use\nthat third parties may have to the information transmitted in the Electronic Banking Services through these\ndevices. Consequently, if the authentication data of THE CLIENT is entered and used according to those\nregistered in our systems at the time of access to the platforms, THE BANK will consider that such instruction\nis valid, legitimate and authentically from THE CLIENT and expressly releases THE BANK of any responsibility.\n7. Surcharges: It is agreed that THE BANK will not be liable for late fees or any type of penalty that a creditor\nimposes on THE CLIENT, or for damages, losses or inconveniences of any nature suffered by THE CLIENT as\na result of payments made through ELECTRONIC BANKING SERVICES after their due date. THE BANK will\nbe responsible only for the provision of the services expressly contemplated in this CONTRACT and will only\nrespond in case of negligence in the performance of such services. In no case, THE BANK will be responsible\nfor any damages or losses that THE CLIENT has suffered, resulting from acts or omissions of THE BANK.\nLikewise, THE CLIENT relieves THE BANK of any responsibility that may arise due to failures in the\nELECTRONIC BANKING SERVICES, malicious acts by third parties by means of which an operation or action\nis carried out as if it were THE CLIENT, the destruction or obtaining of information from THE CLIENT without\nauthorization, by fortuitous or force majeure event, and is obligated to reimburse THE BANK for any amount\nthat they could be ordered to pay for any of the relationships described in this paragraph.\n8. Suspension of Services: THE BANK, for technical, operational or security reasons may suspend or restrict THE\nELECTRONIC BANKING SERVICES in any way, and even cease to provide them totally unilaterally, prior\nnotification to THE CLIENT by any written, telephone or electronic means that THE BANK may consider. Should\nTHE BANK exercise its rights under this clause, THE CLIENT expressly waives any action that could arise\nderived from the suspension or restriction of the service, in accordance with the aforementioned paragraph.\nTHE BANK will not be liable in case of damages caused to THE CLIENT due to the lack of availability of THE\nELECTRONIC BANKING SERVICES due to system failures, communication failures, lack of electrical power,\nsuspension of service, fortuitous cases or force majeure that directly or indirectly affect the proper functioning\nof the ELECTRONIC BANKING SERVICE. THE BANK will also not be liable when the failure or breach is\nattributable to circumstances beyond the control of THE BANK.\nC.1 ONLINE BANKING SERVICES: Means the online banking system that THE CLIENT can access directly through\nthe Internet or any other electronic means or through a computer to perform electronic instructions and consultations\nservices and THE CLIENT will have access to their accounts via internet through a validation process using a user\nID and password. The system will allow THE CLIENT to make those personal or business bank transactions on their\naccounts according to the terms and permissions granted by THE BANK according to the profile established with\nTHE CLIENT.\n\nAccount Affiliation: THE CLIENT will request the service through the necessary means in order to link the\nrequested products that it maintains with THE BANK through and within Online Banking. THE CLIENT will have\nthe option of disabling at any time the products that they do not wish to access through Online Banking.\n2. Activation Code and Password: The Activation Code will be the initial security code assigned and provided by\nTHE BANK. This Activation Code will be generated automatically by THE BANK’s system, and THE CLIENT is\nresponsible for the safekeeping of this Activation Code provided by THE BANK and of any Password that could\nbe subsequently established by THE CLIENT.\n3. Access: Transactions through ELECTRONIC BANKING SERVICES, including Online Banking, will be carried\nout by THE CLIENT or authorized USER, providing their Username and Password, which THE BANK provides\ninitially. For the first entry THE BANK will provide an Activation Code or initial Password on a temporary basis,\nand THE CLIENT or the authorized USER will be required to change the Password upon the first entry, and from\nthere on, THE CLIENT will be able to change this Password whenever they deem convenient, guaranteeing this\nway, greater security in accessing the Online Banking Service. THE BANK reserves the right to request from\ntime to time mandatory change of THE CLIENT’s Password.\n4. Password Change: THE CLIENT or authorized USER will have the responsibility to change the Password the\nfirst time they enter the Online Banking Service.\n5. Confidentiality: THE CLIENT and/or authorized USER will keep their Username and Password under strict\nconfidentiality. THE CLIENT and/or authorized USER have under their own responsibility not to provide this\nPassword to third parties or unauthorized persons.\n6. Products: CLIENTS that are individuals or maintain individual accounts with THE BANK declare that they\nunderstand and accept that all the products that they maintain with THE BANK will automatically be included in\nthe Online Banking Services at the moment the service is first provided. THE CLIENT will have the option of\ndisabling the products that they do not wish to access through Online Banking at any moment. CLIENTS that\nare corporations or maintain corporate accounts with THE BANK, must describe the products they wish affiliated\nto their accounts in the Corporate Online Banking Application.\n7. User Guide: THE BANK will have a detailed guide on its website for the proper use of Online Banking.\n8. Transactions to be Activated: THE CLIENT or authorized USER will determine by means of a duly signed\ndocument or application the profile that they will have access, which will determine if access is limited only to\nbalance inquiries or allowed for any type of transaction through the Online Banking Services.\nC.2 ACH SERVICES: ACH stands for AUTOMATED CLEARING HOUSE, and is the electronic funds transfer service\nand system for distributing and compensating collections and payments electronically among all Affiliated Financial\nInstitutions through the ELECTRONIC BANKING SERVICE channels offered by THE BANK.\n1. THE REGULATIONS OF TELERED: THE BANK undertakes to provide THE CLIENT with the service of\nautomated exchange of funds in accordance with the regulations established by TELERED, S.A., a corporation\norganized in accordance with the laws of the Republic of Panama. These regulations are contained in the\ndocument called \"Operating Regulations of the ACH Network\", hereinafter referred to as THE REGULATIONS,\nwhich THE CLIENT declares to accept. By accepting this document, THE CLIENT assumes the responsibility\nof reading and complying with the REGULATIONS of operation, which are contained for further reference in THE BANK’s Web site of EL BANCO www.atlasbank.com, Banking / Products / ACH section.\na) The automated exchange or transfer of funds will take place when THE CLIENT transmits the debit and /\nor credit entries and instructions through THE BANK to other recipient banks.\nb) THE CLIENT will adapt all input of information for the request of transfer of funds to the format, satisfaction\nand specifications contained in THE REGULATIONS, including the security procedures of TELERED.\nc) THE CLIENT will provide THE BANK with all the assurances that it deems necessary according to THE\nREGULATIONS with respect to the entry or request for transfer of funds information and provided by THE\nCLIENT. Without limiting the foregoing, THE CLIENT guarantees and agrees that: (a) each entry is correct,\ntimely, has been authorized by the account holder to whom it will be credited or debited or otherwise\ncomplies with THE REGULATIONS; (b) any debit transaction will be for a sum, which on the day before its\ncompensation, will be debited from THE CLIENT; (c) THE CLIENT has complied with all the pre-notification\nrequirements required in THE REGULATIONS; (d) THE CLIENT must retain the original or the copy of THE\nCLIENT\'s authorization record as required by THE REGULATIONS; (e) THE CLIENT will indemnify THE\nBANK against any loss or expense resulting or arising from any breach of any guarantee expressed in the\nagreements and stated guarantees.\nd) The parties agree that the request for transfer of funds provided by THE CLIENT is provisional until THE\nBANK receives compensation for them. If THE BANK does not receive compensation, it will be entitled to\na refund by the accredited party. Should this occur, it will be understood that THE CLIENT requesting the\ntransfer of funds never completed their part of the transaction.\n2. Rejections: THE BANK is entitled to refuse any request for transfer of funds that affects the accounts of THE\nBANK for any reason, including, but not limited to, insufficient funds or revocation of payment or authorization\nof THE CLIENT. It is at the discretion of THE BANK to accept as genuine any written notification that THE BANK\nin good faith considers has been issued by an authorized representative of THE CLIENT, whose name and\nsignature is registered in the files of THE BANK.\n In the case of rejections of transfers made to third parties, THE BANK will proceed with the return of the funds\nto the original account. In the case of ACH transfers, the reason for rejection indicated by the network will be\nindicated. THE BANK reserves the right not to proceed to apply the transfers requested by THE CLIENT through\nELECTRONICA BANKING SERVICES based on the transaction processing policies of THE BANK that may\napply at the moment, and that may contemplate the need for notification to THE CLIENT through any means\nconsidered by THE BANK.\n THE BANK, as established by THE REGULATIONS, must notify THE CLIENT of the receipt of funds returned\nby the receiving bank no later than the business day following the business day it was received. THE BANK is\nnot obligated to retransmit a returned transfer of funds if THE BANK has complied with the terms of this\nCONTRACT in relation to the original request for transfer of funds. THE BANK is not obligated to originate a\ntransaction in which the authorization has been revoked.\n3. Claims: THE CLIENT will not have the right to cancel or amend any ACH transaction once it is received by THE\nBANK, however, THE BANK at the request of THE CLIENT may make reasonable efforts to cancel an entry or\nrequest for transfer of funds prior to its transmission to TELERED or before to credit an entry in THE BANK. Any\nof these requests must comply with the security procedures described in THE REGULATIONS. THE BANK will\nnot be responsible if it is not able to process the request for cancellation.\n\nD. TERMS AND CONDITIONS APPLICABLE\nTO DEBIT CARD SERVICES\nThe Debit Card Service is an additional method that allows CLIENTS to access their checking or savings accounts and\nother services. Therefore, the use of the Debit Card at ATMs and Points of Sale will be limited to the account that THE\nCLIENT has authorized to associate to this service, and which will be governed by these Terms and Conditions, to the\nextent that they do not conflict with the terms contained in the regulations stipulated for Current Accounts and Savings\nAccounts held with THE BANK.\n1. The Card: When requested through the corresponding Service Request, THE BANK will issue to THE CLIENT\na debit card (hereinafter referred to as THE CARD) to be used in association with those accounts specified in\nthe referred Service Request.\n2. Association with Accounts: The use of THE CARD is limited to the account that THE CLIENT has associated to\nit and shall be governed by the Terms and Conditions contained in this section D, insofar as they are not in\nconflict with the regulations governing Current Accounts and Savings Accounts that are associated with it.\n3. Two or More Cardholders: If the related debit account has more than one owner or authorized signatory, THE\nBANK may issue a CARD to each of them. In this case, each of the cardholders will respond jointly and severally\nto THE BANK of the obligations that may arise due to the use of THE CARDS in relation to the related account,\nit being understood that the reference to THE CLIENT in the Terms and Conditions contained in this section D\nwill be understood as a reference to each of the cardholders representing THE CLIENT.\n4. Additional Cards: At the request of THE CLIENT, THE BANK may issue additional cards to the persons\nauthorized by THE CLIENT, even if they are not owners or authorized signatories of the associated accounts.\nThe cardholders of additional cards will have the same obligations and responsibilities that the principal\ncardholder (THE CLIENT) has with THE BANK, it being understood that the principal cardholder (THE CLIENT)\nand cardholders of additional cards will be considered joint debtors of THE BANK. Any cardholder of additional\ncards shall be deemed authorized by THE CLIENT to charge or withdraw by any means against the\ncorresponding related or designated checking or savings account.\n5. Services: Through THE CARD, THE CLIENT may make use of or have access to the services, and those that\nfrom time to time are incorporated into this system, to carry out transactions, through the following means:\na) ATM Units of the networks to which THE BANK is associated, in order to carry out various bank transactions\ndisplayed on the respective ATM screens;\nb) Points of sale in commercial establishments that, from time to time, THE BANK may indicate (hereinafter\nTHE ESTABLISHMENTS) that are affiliated with the networks to which THE BANK is associated for the\npayment of the goods and services acquired with THE CARD.\n6. Limits and Availability of Funds: The amount of the transactions that can be carried out with THE CARD is\nsubject to the limits that THE BANK may freely establish and the availability of funds in the Related Account(s).\n7. Debit Accounts: THE CLIENT hereby authorizes THE BANK to debit its checking or savings account: a) the\nsums or amounts for which THE CLIENT makes payments for services acquired through the use of THE CARD;\nb) the sums or amounts for which THE CLIENT makes purchases at THE ESTABLISHMENTS by using THE\nCARD; and c) in general, any sums involved in transactions that THE CLIENT performs to access funds through\nthe use of THE CARD. THE CLIENT acknowledges from now on and without reservation, as proof of the\ntransactions carried out through the use of THE CARD, the registry of data of said transactions that are\nregistered of THE CARD, and as amount of said transactions those that are registered of THE CARD.\nPersonal Identification Number for Use of THE CARD: In order to provide access for use of THE CARD, THE\nBANK will provide THE CLIENT a secret personal identification number, which should only be known by THE\nCLIENT and, therefore, THE CLIENT is obligated to keep the personal identification number in strict confidence.\nTHE CLIENT undertakes to follow the suggestions and instructions of THE BANK regarding the use and handling\nof THE CARD in order to avoid the improper use of it. It is understood that THE CLIENT will be solely responsible\nfor the improper or unauthorized use or withdrawal of funds made through the use of THE CARD.\n9. Signature of Proof of Purchase: THE CLIENT has the obligation to sign the proof of purchase of the transactions\ncarried out in THE ESTABLISHMENTS. However, THE CLIENT accepts that the lack of his signature on the\nproof of purchase in THE ESTABLISHMENTS will not release him from his responsibility for the transaction\nmade through the use of THE CARD and / or with the use of personal identification number.\n10. Denial of Services by THE ESTABLISHMENTS: THE BANK will not be liable in the event that any of THE\nESTABLISHMENTS do not accept THE CARD or refuses to accept that THE CLIENT carries out transactions\nwith THE CARD.\n11. Overdrafts: THE CLIENT and all cardholders, if applicable, will be jointly and severally liable to THE BANK for\nany overdraft resulting from the use of THE CARD and accept as final, definitive and enforceable the settlement\nmade by THE BANK as soon as the amount of the transaction is owed, being obligated, in addition, to pay THE\nBANK all the charges (including interests and expenses of judicial or extrajudicial collection) that results due to\nany overdraft. Likewise, THE CLIENT authorizes and empowers THE BANK to compensate or apply the\npayment of the overdraft or the amount obtained in excess, of the balance of funds available in the respective\nrelated(s) account(s) and / or of any additional funds that THE BANK holds or may hold in the future for THE\nCLIENT either through deposits or any other means.\n12. Responsibility to Creditors: THE CLIENT is responsible for the timely payment of services whose invoices could\nbe paid through THE CARD. THE CLIENT must make payments for services at least four (4) working days\nbefore the expiration date. THE CLIENT waives any claim (including for damages) present and future against\nTHE BANK for any omission for the timely non-accreditation of said payments by the respective creditors.\n13. Claims: In the event that a claim arises, it will be the responsibility of THE CLIENT to submit to THE BANK with\nproof of the transaction within thirty (30) days from the date the corresponding debit was made to the related\naccount. Said voucher or proof of transaction will serve as proof of payment of said obligations. THE BANK will\ncarry out the pertinent procedures presenting the complaint to the networks to which THE BANK is associated.\n14. Notification of Loss, Misplacement and Misuse: Any operation carried out at ATMs and at ESTABLISHMENTS\nthrough the use of THE CARD and personal identification number is understood to be carried out by THE\nCLIENT or authorized by the latter. Therefore, THE CLIENT will be exclusively responsible for all the\nconsequences arising from such operations until THE CLIENT notifies THE BANK, to the satisfaction of the\nlatter, about the loss, misplacement or misuse of THE CARD or personal identification number, and THE BANK\nacknowledges receipt of such notification, as follows:\na) During regular hours of operation of THE BANK:\n THE CLIENT may notify THE BANK of the loss, misplacement or misuse by means of a call, to the\nsatisfaction of THE BANK, to which THE BANK will proceed with the cancellation of THE CARD; THE CLIENT may also present to THE BANK or notify in writing, to the satisfaction of THE BANK, the\nloss, misplacement or misuse of THE CARD, to which THE BANK will proceed with the cancellation of\nTHE CARD.\nb) During after-hours of operations of THE BANK:\n THE CLIENT may communicate by telephone with the CARD company (in the event that it has this\ntype of service) and, upon receipt of the required information to its satisfaction, the CARD company will\nhave the responsibility of blocking THE CARD and informing the network of their respective blocking.\n15. Issuance and Maintenance Charges: THE CLIENT is obligated to pay THE BANK the charges for the issuance,\nmaintenance and other charges that THE BANK may establish in relation to THE CARD, which may be debited\nfrom the checking and savings accounts of THE CLIENT, at THE BANK sole discretion.\n16. Property of THE CARD: THE CARD is non-transferable and it is owned by THE BANK and may be withdrawn,\ncanceled and retained by THE BANK at any time and without prior notice.\n17. Disclaimer: THE BANK will not be liable if for any reason THE CLIENT cannot make withdrawals through the\nuse of THE CARD, including, but not limited to (i) occasional damage to the machines of the ATMs; (ii) they do\nnot have the cash at the time and in the amounts that are required by THE CLIENT; (iii) deficiencies due to lack\nof electrical power or mechanical, technical or force majeure failures of any of the ATMs or ESTABLISHMENTS,\nnor for any other circumstance that may be attributable to THE BANK.\n18. Termination: The CARD service is conditional on the existence of an account(s) associated with said card, so,\nupon cancellation of the corresponding account(s), the CARD service will automatically be canceled; b) If THE\nCLIENT is the one who decides to cancel the service of THE CARD, he must give notice to THE BANK by written\ninstruction to the satisfaction of THE BANK, accompanied by the principal CARD and all additional cards, as\nwell as any document and object of any nature related to the use of THE CARD. ',
      'es': '',
      'pt': '',
    },
  },
  // EmptyList
  {
    'yxzp1d69': {
      'en': 'Seems you don\'t have anything in your list',
      'es': 'Parece que no tienes nada en tu lista',
      'pt': 'Parece que você não tem nada em sua lista',
    },
  },
  // bankProfileIncomplete
  {
    '9toz69ho': {
      'en': 'Attention! ',
      'es': '¡Atención!',
      'pt': 'Atenção!',
    },
    'iw6zja1e': {
      'en': 'Complete \'General Information\' section before',
      'es': 'Complete la sección \'Información general\' antes',
      'pt': 'Preencha a seção \'Informações Gerais\' antes',
    },
    'v6evwgz8': {
      'en': 'Incomplete Onboarding',
      'es': 'Incorporación incompleta',
      'pt': 'Integração incompleta',
    },
    '3nsfw6l6': {
      'en': 'Onboarding \nProgress',
      'es': 'Inducción\nProgreso',
      'pt': 'Integração\nProgresso',
    },
    'j3k9028c': {
      'en': 'Continue',
      'es': 'Continuar',
      'pt': 'Continuar',
    },
  },
  // createBeneficiary
  {
    'v48eo3hj': {
      'en': 'Contact',
      'es': 'Contacto',
      'pt': 'Contato',
    },
    'zzm4akuv': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'm9kqo607': {
      'en': 'Enter the country name',
      'es': 'Introduzca el nombre del país',
      'pt': 'Digite o nome do país',
    },
    '41hdctod': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    '6b4v7njt': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'pt': 'Opção 1',
    },
    'n24zh3aq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '18bv36eq': {
      'en': 'Introduce tu número móvil',
      'es': 'Introduce tu número móvil',
      'pt': 'Apresente seu número móvel',
    },
    '6unwh6k5': {
      'en': 'Complete Name',
      'es': 'Nombre completo',
      'pt': 'Nome completo',
    },
    'v1rb5bm7': {
      'en': 'First Name',
      'es': 'Nombre de pila',
      'pt': 'Primeiro nome',
    },
    'p3dtg1z5': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'cbv2lr61': {
      'en': 'Second Name',
      'es': 'Segundo nombre',
      'pt': 'Segundo nome',
    },
    'ngzajac3': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'cmxwbcd2': {
      'en': 'Last Name',
      'es': 'Apellido',
      'pt': 'Sobrenome',
    },
    'xe5wzlrc': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'blm420y2': {
      'en': 'Second Last Name ',
      'es': 'Segundo apellido',
      'pt': 'Segundo sobrenome',
    },
    'q5nvkb14': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'va0crmwt': {
      'en': 'Spouse Last Name (optional)',
      'es': 'Apellido del cónyuge (opcional)',
      'pt': 'Sobrenome do cônjuge (opcional)',
    },
    '17sbk1kg': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'nwhh10lf': {
      'en': 'Birthdate',
      'es': 'Fecha de nacimiento',
      'pt': 'Data de nascimento',
    },
    '3qtix9x7': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'cytp9f40': {
      'en': 'Female',
      'es': 'Femenino',
      'pt': 'Fêmea',
    },
    '3fojga2z': {
      'en': 'Male',
      'es': 'Masculino',
      'pt': 'Macho',
    },
    '94avoqxa': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'xco9mwgr': {
      'en': 'Gender',
      'es': 'Género',
      'pt': 'Gênero',
    },
    'l8rt2uoj': {
      'en': 'ID',
      'es': 'IDENTIFICACIÓN',
      'pt': 'EU IA',
    },
    'xu3kui43': {
      'en': 'Nationality',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'k2jf7wj6': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'whkcghma': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'jb0dj55j': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'ace8rtu6': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'zcs0ojv2': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    '35dvtbdr': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    'h8g47mgy': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'k0dwxxi5': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'sozvz9fj': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'w28q3ir4': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '0hi6og1c': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'aenjl2bl': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'wfcs3g6g': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    '01w1qlq4': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'edxvtoxm': {
      'en': 'Issuing Country',
      'es': 'País emisor',
      'pt': 'País emissor',
    },
    '5uswghta': {
      'en': 'ID Number',
      'es': 'Número de identificación',
      'pt': 'Número de identidade',
    },
    'i21yvwgh': {
      'en': 'Enter your ID number..',
      'es': 'Ingresa tu número de DNI..',
      'pt': 'Digite seu número de identificação..',
    },
    'd55inrj4': {
      'en': 'Marital Status',
      'es': 'Estado civil',
      'pt': 'Estado civil',
    },
    'k74r081g': {
      'en': 'Single',
      'es': 'Soltero',
      'pt': 'Solteiro',
    },
    'gklswp54': {
      'en': 'Married',
      'es': 'Casado',
      'pt': 'Casado',
    },
    'jlv9mzjq': {
      'en': 'Divorced',
      'es': 'Divorciado',
      'pt': 'divorciado',
    },
    '7jvfh179': {
      'en': 'Widow',
      'es': 'Viuda',
      'pt': 'Viúva',
    },
    '1ei1iu7m': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'ske4x3bw': {
      'en': 'Employment',
      'es': 'Empleo',
      'pt': 'Emprego',
    },
    '3ych4pfk': {
      'en': 'Status ',
      'es': 'Estado',
      'pt': 'Status',
    },
    'c03zu643': {
      'en': 'Salary Worker',
      'es': 'trabajador asalariado',
      'pt': 'Assalariado',
    },
    'h323r90a': {
      'en': 'Self Employeed',
      'es': 'Auto-empleado',
      'pt': 'Auto-empregado',
    },
    'rz4j58xp': {
      'en': 'Retired',
      'es': 'Jubilado',
      'pt': 'Aposentado',
    },
    '4slvy0ia': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    'ar8p176k': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    '7zupbo0n': {
      'en': 'Place of Work',
      'es': 'Lugar de trabajo',
      'pt': 'Local de trabalho',
    },
    '6uuymvz6': {
      'en': 'Name of Company',
      'es': 'Nombre de la compañía',
      'pt': 'Nome da companhia',
    },
    '65wbq3ln': {
      'en': 'Enter your place of work..',
      'es': 'Ingresa tu lugar de trabajo..',
      'pt': 'Digite seu local de trabalho..',
    },
    '5kigd3yy': {
      'en': 'Ocupation',
      'es': 'Ocupación',
      'pt': 'Ocupação',
    },
    'qhziidka': {
      'en': 'Enter your ocupation..',
      'es': 'Ingresa tu ocupación..',
      'pt': 'Digite sua ocupação..',
    },
    'tisyqr3z': {
      'en': 'Job Address 1',
      'es': 'Dirección de trabajo 1',
      'pt': 'Endereço de trabalho 1',
    },
    'eyft8its': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'a78cne77': {
      'en': 'Job Address 2',
      'es': 'Dirección de trabajo 2',
      'pt': 'Endereço do trabalho 2',
    },
    '1dj7lgn6': {
      'en': 'Enter your job address..',
      'es': 'Ingresa la dirección de tu trabajo..',
      'pt': 'Digite o endereço do seu trabalho..',
    },
    'qrtugewd': {
      'en': 'Telephone of Company',
      'es': 'Teléfono de Empresa',
      'pt': 'Telefone da Empresa',
    },
    'vuh05y6k': {
      'en': 'Enter your cell phone..',
      'es': 'Ingresa tu celular..',
      'pt': 'Digite seu celular..',
    },
    '8ivv306j': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    'x7rroyq8': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'v8n3gro0': {
      'en': 'Annual Salary',
      'es': 'Salario anual',
      'pt': 'Salário anual',
    },
    '4dum04ud': {
      'en': 'Enter your annual  salary..',
      'es': 'Ingresa tu salario anual..',
      'pt': 'Digite seu salário anual..',
    },
    'ahtsaifz': {
      'en': 'Position',
      'es': 'Posición',
      'pt': 'Posição',
    },
    'raewbk1i': {
      'en': 'Enter your job title...',
      'es': 'Ingrese el título de su trabajo...',
      'pt': 'Digite o título do seu trabalho...',
    },
    'whmxvl0t': {
      'en': 'Type of Business',
      'es': 'Tipo de negocio',
      'pt': 'Tipo de negócios',
    },
    'ftl9vusy': {
      'en': 'Other',
      'es': 'Otro',
      'pt': 'Outro',
    },
    '1a1w96wx': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'iq9if3ex': {
      'en': 'Source of  Net Worth',
      'es': 'Fuente del patrimonio neto',
      'pt': 'Fonte do patrimônio líquido',
    },
    'kmjx8kum': {
      'en': 'SOURCE OF NET WORTH',
      'es': 'FUENTE DEL PATRIMONIO NETO',
      'pt': 'FONTE DE VALOR LÍQUIDO',
    },
    'kq6tjt28': {
      'en': 'Explain...',
      'es': 'Explicar...',
      'pt': 'Explicar...',
    },
    '35siagw9': {
      'en': 'Home Address',
      'es': 'Direccion de casa',
      'pt': 'Endereço residencial',
    },
    'k7hu6nl4': {
      'en': 'Panamá',
      'es': 'Panamá',
      'pt': 'Panamá',
    },
    'jvwgcmq9': {
      'en': 'Estados Unidos',
      'es': 'Estados Unidos',
      'pt': 'Estados Unidos',
    },
    'gehcsjfp': {
      'en': 'República Dominicana',
      'es': 'República Dominicana',
      'pt': 'República Dominicana',
    },
    'tycfrp05': {
      'en': 'España',
      'es': 'España',
      'pt': 'Espanha',
    },
    'crzqg81r': {
      'en': 'Country ',
      'es': 'País',
      'pt': 'País',
    },
    'dnuyoui1': {
      'en': 'State',
      'es': 'Estado',
      'pt': 'Estado',
    },
    'za5gbdnp': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    '09249nq4': {
      'en': 'District',
      'es': 'Distrito',
      'pt': 'Distrito',
    },
    'nwtf5soo': {
      'en': 'Enter your district.',
      'es': 'Ingresa tu distrito.',
      'pt': 'Digite seu distrito.',
    },
    'kpyxr470': {
      'en': 'City',
      'es': 'Ciudad',
      'pt': 'Cidade',
    },
    'ek1s4p4n': {
      'en': 'Enter your city .',
      'es': 'Ingresa tu ciudad.',
      'pt': 'Digite sua cidade.',
    },
    '5hygu6hp': {
      'en': 'Street',
      'es': 'Calle',
      'pt': 'Rua',
    },
    'w7hransz': {
      'en': 'Enter your street.',
      'es': 'Ingresa tu calle.',
      'pt': 'Digite sua rua.',
    },
    'lnkywlns': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    '4rrfq4x0': {
      'en': 'Building/Complex Name',
      'es': 'Nombre del edificio/complejo',
      'pt': 'Nome do Edifício/Complexo',
    },
    'ypzk60p7': {
      'en': 'House/Apartment Number',
      'es': 'Número de casa/apartamento',
      'pt': 'Número da casa/apartamento',
    },
    'mzctxm8b': {
      'en': 'Enter your House/Apartment Number',
      'es': 'Ingrese su Número de Casa/Apartamento',
      'pt': 'Insira o número da sua casa/apartamento',
    },
    'eguai6pq': {
      'en': 'Zip Code',
      'es': 'Código postal',
      'pt': 'CEP',
    },
    'x9p3ca86': {
      'en': 'Enter Zip Code.',
      'es': 'Ingresa tu código postal.',
      'pt': 'Digite o código postal.',
    },
    'rmrcxo07': {
      'en': 'No. of Dependents',
      'es': 'Número de dependientes',
      'pt': 'Número de dependentes',
    },
    'zfys6s8o': {
      'en': 'How many people depend on you...',
      'es': 'Cuantas personas dependen de ti...',
      'pt': 'Quantas pessoas dependem de você...',
    },
    't9v88ves': {
      'en': 'Educational Level ',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    't1qa9yng': {
      'en': 'High School',
      'es': 'Escuela secundaria',
      'pt': 'Ensino médio',
    },
    'poufwh4s': {
      'en': 'Masters Degree',
      'es': 'Maestría',
      'pt': 'Mestrado',
    },
    '914se5ag': {
      'en': 'Bachelors Degree',
      'es': 'Licenciatura',
      'pt': 'Diploma de bacharel',
    },
    'nnzy2zz3': {
      'en': 'PHD',
      'es': 'Doctor',
      'pt': 'PHD',
    },
    's4a6h8kl': {
      'en': 'Educational Level',
      'es': 'Nivel educacional',
      'pt': 'Nível educacional',
    },
    '55esyctx': {
      'en': 'Percent Ownership ',
      'es': 'Porcentaje de propiedad',
      'pt': 'Porcentagem de propriedade',
    },
    'r83xlwks': {
      'en': ' Percentage',
      'es': 'Porcentaje',
      'pt': 'Percentagem',
    },
    'z92kf3so': {
      'en': '.%',
      'es': '.%',
      'pt': '.%',
    },
    'mz24mv6k': {
      'en': 'Create Member',
      'es': 'Crear miembro',
      'pt': 'Criar membro',
    },
  },
  // createBeneficiarySelect
  {
    'c1vrderp': {
      'en': 'BENEFICIAL OWNER',
      'es': 'PROPIETARIO EFECTIVO',
      'pt': 'PORTADOR BENEFICIADO',
    },
    'b81azkn8': {
      'en': 'BENEFICIAL OWNER',
      'es': 'PROPIETARIO EFECTIVO',
      'pt': 'PORTADOR BENEFICIADO',
    },
    'uvsvc4mw': {
      'en': ' (With Percent Ownership greater than 10% )',
      'es': '(Con porcentaje de propiedad superior al 10 %)',
      'pt': '(Com percentual de propriedade superior a 10%)',
    },
    'j0irt885': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // createBoardMembers
  {
    'g896djvk': {
      'en': 'BOARD MEMBERS',
      'es': 'MIEMBROS DE LA JUNTA',
      'pt': 'MEMBROS DO CONSELHO',
    },
    'fy0kny6t': {
      'en': 'add as Board Member the person:',
      'es': 'agregar como miembro de la Junta a la persona:',
      'pt': 'adicionar como Membro do Conselho a pessoa:',
    },
    '2cjy2v7h': {
      'en': 'Board Position',
      'es': 'Posición de la Junta',
      'pt': 'Posição no Conselho',
    },
    'x8u2hs3n': {
      'en': 'Chairman',
      'es': 'Presidente',
      'pt': 'Presidente',
    },
    '60dz3my3': {
      'en': 'Vice Chairman ',
      'es': 'vicepresidente',
      'pt': 'Vice presidente',
    },
    'hizd05sw': {
      'en': 'Secretary',
      'es': 'Secretario',
      'pt': 'secretário',
    },
    'ddceh1v1': {
      'en': 'Treasurer',
      'es': 'Tesorero',
      'pt': 'Tesoureiro',
    },
    '33zqo5ov': {
      'en': 'Directors',
      'es': 'directores',
      'pt': 'Diretores',
    },
    'h9l9kg5l': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'p2oxoprl': {
      'en': ' Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'r7jok86g': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '0waqot89': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    'scpqgs8t': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'x28ddto7': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'ergkb2ff': {
      'en': 'ID No. ',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    'ymz94hyf': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '4tsh1qit': {
      'en': 'Upload Document',
      'es': 'Subir documento',
      'pt': 'Carregar Documento',
    },
    'xjiroion': {
      'en': 'Nationality ',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'dwjhhhp3': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    's8saeaku': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    '6lifpw0p': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'ai1t31mo': {
      'en': 'Country of Issuance',
      'es': 'País de Emisión',
      'pt': 'País de Emissão',
    },
    'zzrwh254': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    '8bzsk2mh': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    '8rff5jtz': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    '4fqxtosp': {
      'en': 'Expiration Date',
      'es': 'Fecha de caducidad',
      'pt': 'Data de validade',
    },
    'lovh24fc': {
      'en': 'Create Member',
      'es': 'Crear miembro',
      'pt': 'Criar membro',
    },
  },
  // editBoardMembers
  {
    'f1qq5vo9': {
      'en': 'EDIT MEMBER',
      'es': 'EDITAR MIEMBRO',
      'pt': 'EDITAR MEMBRO',
    },
    'qhc1yes3': {
      'en': 'from here you can edit the member',
      'es': 'desde aquí puedes editar el miembro',
      'pt': 'a partir daqui você pode editar o membro',
    },
    'x35mnxpd': {
      'en': 'Board Position',
      'es': 'Posición de la Junta',
      'pt': 'Posição no Conselho',
    },
    '5vl5yys9': {
      'en': 'Chairman',
      'es': 'Presidente',
      'pt': 'Presidente',
    },
    'za31ijle': {
      'en': 'Vice Chairman ',
      'es': 'Vicepresidente',
      'pt': 'Vice presidente',
    },
    '2ik14to1': {
      'en': 'Secretary',
      'es': 'Secretario',
      'pt': 'secretário',
    },
    'cx0apfyl': {
      'en': 'Treasurer',
      'es': 'Tesorero',
      'pt': 'Tesoureiro',
    },
    '97dod2ow': {
      'en': 'Director',
      'es': 'Director',
      'pt': 'Diretor',
    },
    'ytvmy543': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'var6a36s': {
      'en': ' Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'bcdjh0pm': {
      'en': 'Name',
      'es': 'Nombre',
      'pt': 'Nome',
    },
    'wn21omc4': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    'udkl4szf': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    '35zytn4c': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'h36pbgz7': {
      'en': 'ID No. ',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    '6hk6hgqc': {
      'en': 'ID No.',
      'es': 'número de identificación',
      'pt': 'N.º de identificação',
    },
    '0zqkly0k': {
      'en': 'Upload Document',
      'es': 'Subir documento',
      'pt': 'Carregar Documento',
    },
    'yg2nq4tw': {
      'en': 'Nationality ',
      'es': 'Nacionalidad',
      'pt': 'Nacionalidade',
    },
    'wqk54p7q': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    'myxgjlxq': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'lcuiqzje': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'amlkdrf2': {
      'en': 'Country of Issuance',
      'es': 'País de Emisión',
      'pt': 'País de Emissão',
    },
    'c24nukwc': {
      'en': 'Local ID',
      'es': 'ID local',
      'pt': 'ID local',
    },
    'eb9nxeg6': {
      'en': 'Passport',
      'es': 'Pasaporte',
      'pt': 'Passaporte',
    },
    'ziaqy8hd': {
      'en': 'Choose One Option',
      'es': 'Elija una opción',
      'pt': 'Escolha uma opção',
    },
    'qyvulhau': {
      'en': 'Expiration Date',
      'es': 'Fecha de caducidad',
      'pt': 'Data de validade',
    },
    '1mce6sjl': {
      'en': 'Create Member',
      'es': 'Crear miembro',
      'pt': 'Criar membro',
    },
  },
  // adminAuth
  {
    '5k0l7xz9': {
      'en': 'Administrator Authorization',
      'es': '',
      'pt': '',
    },
    'pba29zta': {
      'en': 'Email Address',
      'es': 'Dirección de correo electrónico',
      'pt': 'Endereço de email',
    },
    'ls6ukb5b': {
      'en': 'Permissions',
      'es': '',
      'pt': '',
    },
    'iob4qgel': {
      'en': 'Give or remove administrator permissions for this user',
      'es': '',
      'pt': '',
    },
    'hcaw1u2h': {
      'en': 'Save',
      'es': '',
      'pt': '',
    },
  },
  // createAdmin
  {
    '4wblfjdg': {
      'en': 'Create Admin',
      'es': 'Crear Referencia Comercial',
      'pt': 'Criar Referência Comercial',
    },
    'pqgnbuiw': {
      'en': 'Fill in all the fields',
      'es': 'Rellena todos los campos',
      'pt': 'Preencha todos os campos',
    },
    '2xbxt5fy': {
      'en': 'Name',
      'es': 'nombre de empresa',
      'pt': 'nome da empresa',
    },
    'tgbopi2k': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'n2gw3h1u': {
      'en': 'Email',
      'es': 'DIRECCIÓN',
      'pt': 'Endereço',
    },
    'pqisnzgk': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'c1p2q5n3': {
      'en': 'Create Reference',
      'es': 'Crear referencia',
      'pt': 'Criar referência',
    },
  },
  // deleteAdmin
  {
    'xmguge9v': {
      'en': 'Delete',
      'es': 'Editar',
      'pt': 'Editar',
    },
    'vgfjh78u': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // beneficiaryType
  {
    'hogpmvic': {
      'en': 'Beneficiary Person',
      'es': 'Persona Beneficiaria',
      'pt': 'Beneficiário',
    },
    'u2ci3rt6': {
      'en': 'Beneficiary Company',
      'es': 'Empresa Beneficiaria',
      'pt': 'Empresa Beneficiária',
    },
    'kah1slhr': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'pt': 'Cancelar',
    },
  },
  // Miscellaneous
  {
    't0lpk5t7': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '2k7k9s3b': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '40bdigau': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'y5bp8o91': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'etc1snpu': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '5yuubzpg': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'xqu0keu1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'vdx7xrzp': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'kmcxvrtt': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'fl33nz53': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'xm1j5zog': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'zx65awh7': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'br4nusef': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'epgboe4k': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '28vzybuq': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '85wyjimn': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'eeddy1t1': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '0zs2h02z': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '16x2c7gg': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'rxhqmbk8': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'y9aegnjc': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'ss8aibol': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'mpmescfz': {
      'en': '',
      'es': '',
      'pt': '',
    },
    'rf34kx5m': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '7fqfw0p9': {
      'en': '',
      'es': '',
      'pt': '',
    },
    '0k4eu4o3': {
      'en': '',
      'es': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
