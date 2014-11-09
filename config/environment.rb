require 'erb'
require 'date'
require 'tzinfo'
require 'active_support'

require_relative '../lib/timestampper'
require_relative '../lib/post'
require_relative '../lib/blog'


class Time

   # tzstring e.g. 'America/Los_Angeles'

   def in_timezone(tzstring)
     tz = TZInfo::Timezone.get tzstring
     p = tz.period_for_utc self
     e = self.localtime(p.utc_offset)

     if e.isdst
        e = e + 60*60
     end
     e
   end

end