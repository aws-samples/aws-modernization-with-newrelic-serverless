+++
title = "Distributed Tracing"
chapter = true
weight = 80
+++

# Digging Deeper

Transaction tracing is effective for analyzing activity in one application. With distributed tracing, you can see the entire journey your requests take as they travel through distributed systems.

As requests travel between services, each segment is recorded as a span, which represents time spent in services or resources of those services. All the spans of a request are combined into a single distributed trace to give you a picture of an entire request.

If you are utilizing New Relic Logs, logs in context will also be provided.
