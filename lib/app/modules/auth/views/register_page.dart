part of "../auth.dart";

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final controller = RegisterController.instance;

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => Keyboard.hide(context),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            color: Colors.transparent,
            width: double.infinity,
            height: Get.size.height - 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Image.asset(
                      image("logo.png"),
                      width: 75,
                    ),
                    SizedBox(height: 15),
                    Text("Welcome,", style: TextStyl.heading(context).md.semibold),
                    SizedBox(height: 5),
                    Text("Create an account to continue.", style: TextStyl.body(context).md.regular),
                  ],
                ),
                Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      FormInput.text(
                        controller: controller.firstNameInput,
                        placeholder: "First Name",
                        leading: Icon(Icons.person_outline),
                        validator: (value) => Validator("First name", value!).required().validate(),
                        action: TextInputAction.next,
                      ),
                      SizedBox(height: 25),
                      FormInput.text(
                        controller: controller.lastNameInput,
                        placeholder: "Last Name",
                        leading: Icon(Icons.person_outline),
                        validator: (value) => Validator("Last name", value!).required().validate(),
                        action: TextInputAction.next,
                      ),
                      SizedBox(height: 25),
                      FormInput.text(
                        controller: controller.usernameInput,
                        placeholder: "Username",
                        leading: Icon(Icons.alternate_email_outlined),
                        validator: (value) => Validator("Username", value!).required().validate(),
                        action: TextInputAction.next,
                      ),
                      SizedBox(height: 25),
                      FormInput.email(
                        controller: controller.emailInput,
                        placeholder: "Email",
                        leading: Icon(Icons.email_outlined),
                        validator: (value) => Validator("Email", value!).email().required().validate(),
                        action: TextInputAction.next,
                      ),
                      SizedBox(height: 25),
                      FormInput.password(
                        controller: controller.passwordInput,
                        placeholder: "Password",
                        leading: Icon(Icons.lock_outline),
                        validator: (value) => Validator("Password", value!).required().validate(),
                        action: TextInputAction.done,
                      ),
                      SizedBox(height: 25),
                      Button.block(
                        key: UniqueKey(),
                        label: "Register",
                        onTap: (btn) {
                          btn.setBusy(true);
                          controller.submit();
                          btn.setBusy(false);
                        },
                      ),
                      SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => Get.offNamed(AuthRouter.login),
                        child: Text.rich(
                          TextSpan(
                            text: "Already have an account?",
                            style: TextStyl.label(context).md.regular,
                            children: [
                              TextSpan(
                                text: " Login",
                                style: TextStyl.label(context).md.medium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
