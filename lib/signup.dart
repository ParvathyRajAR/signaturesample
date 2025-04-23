// import 'package:flutter/material.dart';
// import 'main.dart';


// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _confirmPasswordController = TextEditingController();
//   String? _selectedRole;
//   bool _agreeToTerms = false;

//   // List of roles for the dropdown
//   final List<String> _roles = ['Devotee', 'Astrologer', 'Temple'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sign Up'),
//         backgroundColor: Colors.brown,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               // Name Field
//               TextFormField(
//                 controller: _nameController,
//                 decoration: const InputDecoration(
//                   labelText: 'Name',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16.0),

//               // Email Field
//               TextFormField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   // Basic email validation
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
//                   if (!emailRegex.hasMatch(value)) {
//                     return 'Please enter a valid email address';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16.0),

//               // Password Field
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   // Password validation: at least 6 characters
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a password';
//                   }
//                   if (value.length < 6) {
//                     return 'Password must be at least 6 characters long';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16.0),

//               // Confirm Password Field
//               TextFormField(
//                 controller: _confirmPasswordController,
//                 decoration: const InputDecoration(
//                   labelText: 'Confirm Password',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//                 validator: (value) {
//                   // Confirm password validation
//                   if (value == null || value.isEmpty) {
//                     return 'Please confirm your password';
//                   }
//                   if (value != _passwordController.text) {
//                     return 'Passwords do not match';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16.0),

//               // Role Dropdown
//               DropdownButtonFormField<String>(
//                 value: _selectedRole,
//                 decoration: const InputDecoration(
//                   labelText: 'Role',
//                   border: OutlineInputBorder(),
//                 ),
//                 items: _roles.map((role) {
//                   return DropdownMenuItem(
//                     value: role,
//                     child: Text(role),
//                   );
//                 }).toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     _selectedRole = value;
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null) {
//                     return 'Please select a role';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 16.0),

//               // Terms and Conditions Checkbox
//               Row(
//                 children: [
//                   Checkbox(
//                     value: _agreeToTerms,
//                     onChanged: (value) {
//                       setState(() {
//                         _agreeToTerms = value ?? false;
//                       });
//                     },
//                   ),
//                   const Expanded(
//                     child: Text(
//                       'I agree to the Terms and Conditions',
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ],
//               ),
//               if (!_agreeToTerms)
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'You must accept the Terms and Conditions',
//                     style: TextStyle(color: Colors.red),
//                   ),
//                 ),
//               const SizedBox(height: 16.0),

//               // Sign Up Button
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.brown,
//                   minimumSize: const Size(double.infinity, 50),
//                 ),
//                 onPressed: () {
//                   if (_formKey.currentState?.validate() ?? false) {
//                     if (!_agreeToTerms) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('You must accept the Terms and Conditions'),
//                         ),
//                       );
//                       return;
//                     }
//                     // Proceed with the sign-up process
//                     // For example, save the user data or navigate to another screen
//                   }
//                 },
//                 child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
//               ),
//               const SizedBox(height: 16.0),

//               // Already have an account? Sign In
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text('Already have an account?'),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (context) => const TempleApp(),
//                           ),
//                       ); 
//                     },
//                     child: const Text(
//                       'Sign In',
//                       style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  String? _selectedRole;
  bool _agreeToTerms = false;

  final List<String> _roles = ['Devotee', 'Astrologer', 'Temple'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name Field
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Email Field
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Phone Number Field
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  final phoneRegex = RegExp(r'^\d{10}$');
                  if (!phoneRegex.hasMatch(value)) {
                    return 'Please enter a valid 10-digit phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Password Field
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Confirm Password Field
              TextFormField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Role Dropdown
              DropdownButtonFormField<String>(
                value: _selectedRole,
                decoration: const InputDecoration(
                  labelText: 'Role',
                  border: OutlineInputBorder(),
                ),
                items: _roles.map((role) {
                  return DropdownMenuItem(
                    value: role,
                    child: Text(role),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedRole = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select a role';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),

              // Terms and Conditions Checkbox
              Row(
                children: [
                  Checkbox(
                    value: _agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreeToTerms = value ?? false;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'I agree to the Terms and Conditions',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              if (!_agreeToTerms)
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You must accept the Terms and Conditions',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              const SizedBox(height: 16.0),

              // Sign Up Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    if (!_agreeToTerms) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You must accept the Terms and Conditions'),
                        ),
                      );
                      return;
                    }

                    // Here, handle the sign-up logic (e.g., send to backend or Firebase)
                    print("Name: ${_nameController.text}");
                    print("Email: ${_emailController.text}");
                    print("Phone: ${_phoneController.text}");
                    print("Role: $_selectedRole");

                    // You can navigate or show success message here
                  }
                },
                child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 16.0),

              // Already have an account? Sign In
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TempleApp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
