FROM rust:1.71 AS builder
COPY . .
RUN cargo build --release

FROM debian:buster-slim
COPY --from=builder ./target/release/rasuti ./target/release/rasuti
CMD ["./target/release/rasuti"]