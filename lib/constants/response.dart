const const_response = {
  "STATUS": {
    "SUCCESS": 1,
    "ERROR": 0,
  },
  "MESSAGE": {
    "SUCCESS": "success",
    "ERROR": "error",
    "NOT_FOUND": "url not found",
    "BODY_INVALID": "body invalid",
    "AUTH": {
      "FAIL": "Authentication failed",
      "TIMESTAMPS_INVALID": "Timestamps invalid",
      "HASH_KEY_INVALID": "HashKey invalid",
    },
    "USER": {
      "VERIFY_CODE_INVALID": "code invalid",
      "ACCOUNT_INVALID": "account invalid",
      "PASSWORD_INCORRECT": "pass incorrect",
      "EMAIL_EXISTED": "email existed",
    }
  },
  "ERROR_CODE": {
    "NOT_FOUND": 404,
    "BODY_INVALID": 1,
    "EXCEPTION": 2,
    "AUTH": {
      "FAIL": 20,
      "TIMESTAMPS_INVALID": 21,
      "HASH_KEY_INVALID": 22,
    },
    "USER": {
      "VERIFY_CODE_INVALID": 20,
      "ACCOUNT_INVALID": 21,
      "PASSWORD_INCORRECT": 22,
      "EMAIL_EXISTED": 23,
    }
  },
};
