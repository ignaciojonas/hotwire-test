class Style < ApplicationRecord
    after_create_commit {broadcast_prepend_to "styles"}
    after_update_commit {broadcast_replace_to "styles"}
    after_destroy_commit {broadcast_remove_to "styles"}
end
