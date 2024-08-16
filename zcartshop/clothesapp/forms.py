from django import forms
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.http import request

from clothesapp.models import Profile


class RegistrationForm(forms.ModelForm):
    username = forms.CharField(label='Username', max_length=100)
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirm Password', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ('username', 'email',)

    def clean_email(self):
        email = self.cleaned_data.get("email")
        userobj = User.objects.filter(email__iexact=email)
        if userobj.exists():
            raise forms.ValidationError("Email already registered")
        return email

    def clean_password2(self):
        pass1 = self.cleaned_data.get("password1")
        pass2 = self.cleaned_data.get("password2")
        if pass1 != pass2:
            raise forms.ValidationError("Password does not match")
        return pass2

    def save(self, commit=True):
        userobj = super(RegistrationForm, self).save(commit=False)
        userobj.set_password(self.cleaned_data["password2"])
        userobj.is_active = True
        if commit:
            userobj.save()
        return userobj

class ProfileForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('phone', 'gender', 'birth_date')


class LoginForm(forms.Form):
    username1 = forms.CharField(label="Username")
    password1= forms.CharField(label="Password",widget=forms.PasswordInput)

    def clean(self):
        uname = self.cleaned_data.get("username1")
        pass1 = self.cleaned_data.get("password1")
        userobj = authenticate(request,username=uname,password=pass1)
        if userobj is None:
            raise forms.ValidationError("Invalid username / password")
        return super(LoginForm,self).clean()


