# Compliance Details

This document provides a detailed overview of the compliance and data handling policies for the Sovereign iOS project. It complements the high-level checklist in `COMPLIANCE.md` and the user-facing `PRIVACY_POLICY.md`.

## Data Handling

### Data Collection
The application collects the following user data:
- **Profile Information:** User-provided name, email, etc., for account creation.
- **Birth Data:** Date, time, and location of birth for astrology calculations.
- **Journal Entries:** User-created text entries in the Secure Journal feature.

The application **does not** collect sensitive device data, such as location tracking, contacts, or photos, without explicit user permission for a specific feature.

### Data Storage
- **Local Storage:** All user data stored on the device, including journal entries and profile information, is encrypted using Apple's CryptoKit framework.
- **In Transit:** All communication with our backend services is encrypted using TLS 1.2 or higher.

### Third-Party Services
- **Astrology & Psychology Microservice:** We use a proprietary backend service for our core features. All data sent to this service is handled according to our privacy policy.
- **Other Third Parties:** We do not share user data with any other third-party services for advertising or analytics purposes.

## Regulatory Compliance

### GDPR (General Data Protection Regulation)
- **User Rights:** Users have the right to request access to, correction of, or deletion of their personal data. Requests can be made to the contact email specified in the `PRIVACY_POLICY.md`.
- **Data Consent:** Users must explicitly consent to our data collection and processing during onboarding.

### COPPA (Children's Online Privacy Protection Act)
- **Age Gate:** The application is not intended for children under the age of 13. We will implement an age gate during onboarding to ensure compliance.

## App Store Guidelines
- **Privacy Policy:** A link to our `PRIVACY_POLICY.md` will be available within the app and on the App Store listing.
- **Accessibility:** We are committed to following Apple's accessibility guidelines, including support for VoiceOver and Dynamic Type.
- **Secure Authentication:** Our authentication system follows security best practices to protect user accounts.

## Future Compliance Reviews
This document will be reviewed and updated on a regular basis, and in response to any new features that impact data handling or any changes in regulatory requirements.
