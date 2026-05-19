part of "../auth.dart";

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = LoginController.instance;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AuthLayout(
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Image.asset(
                        "assets/images/logo.png",
                        // image('logo.png'),
                        width: 75,
                      ),
                      const SizedBox(height: kSpacer),
                      Text("Welcome Back,",
                          style: TextStyl.heading(context).md.semibold),
                      const SizedBox(height: kSpacer1),
                      Text("Sign in to continue",
                          style: TextStyl.body(context).md.regular),
                    ],
                  ),
                  Form(
                    key: controller.formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        FormInput.text(
                          controller: controller.identifierInput,
                          placeholder: "Username / Email / Phone",
                          leading: Icon(FeatherIcons.user),
                          validator: (value) => Validator("identifier", value!)
                              .required()
                              .validate(),
                        ),
                        SizedBox(height: 25),
                        FormInput.password(
                          controller: controller.passwordInput,
                          placeholder: "Password",
                          leading: Icon(Icons.lock_outline),
                          validator: (value) => Validator("password", value!)
                              .required()
                              .validate(),
                          action: TextInputAction.done,
                        ),
                        SizedBox(height: 25),
                        Button.block(
                          key: UniqueKey(),
                          label: "Login",
                          onTap: (ButtonController btn) async {
                            btn.setBusy(true);
                            btn.setDisabled(true);
                            await controller.submit();
                            btn.setBusy(false);
                            btn.setDisabled(false);
                          },
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () => Get.offNamed(AuthRouter.register),
                          child: Text.rich(
                            TextSpan(
                              text: "Don't have an account?",
                              style: TextStyl.label(context).md.regular,
                              children: [
                                TextSpan(
                                  text: " Join Now",
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
      ),
    );
  }
}
