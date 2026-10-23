// Paste your two Supabase values between the quotes, then save the file.
// Leave both empty to run the site without accounts (progress stays in each browser).
window.GARDEN_CONFIG = {
  supabaseUrl: "https://vxrtrlvhdfbviumjqmny.supabase.co/rest/v1/",       // looks like https://abcdxyz.supabase.co
  supabaseAnonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ4cnRybHZoZGZidml1bWpxbW55Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTI3ODM2OTMsImV4cCI6MjEwODM1OTY5M30.UgCasQGd8yn6QpHky-aBRdZh18w-QiGVQxhUq07vVAM",   // the long "anon" / "publishable" key. It is safe to publish.
  passwordResetEmail: false // keep false unless you set up a custom email sender (see README)
};
